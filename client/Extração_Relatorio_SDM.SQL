select dbo.call_req.ref_num, dbo.call_req.summary, dbo.call_req.status, dbo.call_req.open_date, dbo.call_req.close_date, dbo.prob_ctg.sym, dbo.prob_ctg.zusits1, dbo.prob_ctg.zusit2_double, dbo.call_req.resolution_method, dbo.View_Group.last_name, dbo.call_req.priority, dbo.call_req.type,
  (select sum(dbo.z_call_req.working_seconds)
    from dbo.z_call_req
       left join View_Group on dbo.z_call_req.call_req_group_id = dbo.View_Group.contact_uuid
    where
      dbo.call_req.ref_num = dbo.z_call_req.call_req_ref_num
      AND (dbo.z_call_req.call_req_status = 'OP'
      or dbo.z_call_req.call_req_status = 'REOP'
      or dbo.z_call_req.call_req_status = 'REAB')
      and dbo.View_Group.last_name like 'Ilha%' 
   ) as TOT_AG_ATEND,
 
   (select sum(dbo.z_call_req.working_seconds)
    from dbo.z_call_req
      left join View_Group on dbo.z_call_req.call_req_group_id = dbo.View_Group.contact_uuid
    where
      dbo.call_req.ref_num = dbo.z_call_req.call_req_ref_num
      AND (dbo.z_call_req.call_req_status = 'FIP'
      or dbo.z_call_req.call_req_status = 'OP'
      or dbo.z_call_req.call_req_status = 'REOP'
      or dbo.z_call_req.call_req_status = 'REAB')
      and dbo.View_Group.last_name like 'Ilha%' 
   ) as TOT_ATEND,

   (select count(dbo.z_call_req.call_req_status)
    from dbo.z_call_req
      left join View_Group on dbo.z_call_req.call_req_group_id = dbo.View_Group.contact_uuid
    where
      dbo.call_req.ref_num = dbo.z_call_req.call_req_ref_num
      AND dbo.z_call_req.call_req_status = 'REAB'
      and dbo.View_Group.last_name like 'Ilha%' 
   ) as REABERTURAS
  
from dbo.call_req 
  left join z_call_req on dbo.call_req.ref_num = dbo.z_call_req.call_req_ref_num
  left join View_Group on dbo.call_req.group_id = dbo.View_Group.contact_uuid
  left join prob_ctg on dbo.call_req.category = dbo.prob_ctg.persid

where
  dbo.View_Group.last_name like 'Ilha%' 
  and dbo.call_req.ref_num = '563889'

group by dbo.call_req.ref_num, dbo.call_req.summary, dbo.call_req.status, dbo.call_req.open_date, dbo.call_req.close_date, dbo.prob_ctg.sym, dbo.prob_ctg.zusits1, dbo.prob_ctg.zusit2_double, dbo.call_req.resolution_method, dbo.View_Group.last_name, dbo.call_req.priority, dbo.call_req.type

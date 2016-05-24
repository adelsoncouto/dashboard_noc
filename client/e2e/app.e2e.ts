import { TcuPage } from './app.po';

describe('tcu App', function() {
  let page: TcuPage;

  beforeEach(() => {
    page = new TcuPage();
  })

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('tcu works!');
  });
});

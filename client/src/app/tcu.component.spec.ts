import {
  beforeEachProviders,
  describe,
  expect,
  it,
  inject
} from '@angular/core/testing';
import { TcuAppComponent } from '../app/tcu.component';

beforeEachProviders(() => [TcuAppComponent]);

describe('App: Tcu', () => {
  it('should create the app',
      inject([TcuAppComponent], (app: TcuAppComponent) => {
    expect(app).toBeTruthy();
  }));

  it('should have as title \'tcu works!\'',
      inject([TcuAppComponent], (app: TcuAppComponent) => {
    expect(app.title).toEqual('tcu works!');
  }));
});

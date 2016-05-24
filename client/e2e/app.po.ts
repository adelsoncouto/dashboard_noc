export class TcuPage {
  navigateTo() {
    return browser.get('/');
  }

  getParagraphText() {
    return element(by.css('tcu-app h1')).getText();
  }
}

%hook UIAlertView

- (void)show {
NSPredicate *jailbrMatch = [NSPredicate predicateWithFormat:@"SELF LIKE '*jailbr*'"];
NSPredicate *deviceMatch = [NSPredicate predicateWithFormat:@"SELF LIKE '*device*'"];

  if([jailbrMatch evaluateWithObject:self.message]) {
    [self dismissWithClickedButtonIndex:-1 animated:YES];
  }

  if([deviceMatch evaluateWithObject:self.message]) {
    [self dismissWithClickedButtonIndex:-1 animated:YES];
  }

}
%end

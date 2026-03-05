enum AccessKeyPermissions {
  valueRead("Read"),
  valueWrite("Write"),
  valueListen("Listen"),
  valueSend("Send"),
  valueManage("Manage");

  const AccessKeyPermissions(this.wireValue);
  final String wireValue;

  static AccessKeyPermissions fromValue(String value) {
    for (final item in AccessKeyPermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessKeyPermissions value: $value');
  }
}


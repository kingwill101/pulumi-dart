enum AccessKeyPermissions {
  valueRead("Read"),
  valueWrite("Write"),
  valueListen("Listen"),
  valueSend("Send"),
  valueManage("Manage");

  const AccessKeyPermissions(this.value);
  final String value;

  static AccessKeyPermissions fromValue(String value) {
    for (final item in AccessKeyPermissions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessKeyPermissions value: $value');
  }
}


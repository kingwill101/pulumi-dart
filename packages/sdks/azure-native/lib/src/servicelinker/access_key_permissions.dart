import 'package:pulumi/pulumi.dart' as pulumi;

enum AccessKeyPermissions implements pulumi.PulumiEnum<String> {
  valueRead("Read"),
  valueWrite("Write"),
  valueListen("Listen"),
  valueSend("Send"),
  valueManage("Manage");

  const AccessKeyPermissions(this.wireValue);
  @override
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

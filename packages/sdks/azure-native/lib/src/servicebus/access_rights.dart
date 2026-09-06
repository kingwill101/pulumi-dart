import 'package:pulumi/pulumi.dart' as pulumi;

enum AccessRights implements pulumi.PulumiEnum<String> {
  valueManage("Manage"),
  valueSend("Send"),
  valueListen("Listen");

  const AccessRights(this.wireValue);
  @override
  final String wireValue;

  static AccessRights fromValue(String value) {
    for (final item in AccessRights.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRights value: $value');
  }
}

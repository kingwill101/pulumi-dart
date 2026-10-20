import 'package:pulumi/pulumi.dart' as pulumi;

enum EnterpriseCrmEventbusProtoLogSettingsSeedScope implements pulumi.PulumiEnum<String> {
  seedScopeUnspecified("SEED_SCOPE_UNSPECIFIED"),
  eventName("EVENT_NAME"),
  timePeriod("TIME_PERIOD"),
  paramName("PARAM_NAME");

  const EnterpriseCrmEventbusProtoLogSettingsSeedScope(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmEventbusProtoLogSettingsSeedScope fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoLogSettingsSeedScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoLogSettingsSeedScope value: $value');
  }
}

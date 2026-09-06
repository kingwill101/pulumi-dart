import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Indicates public network solution. If enable, enable public network access of target service with best try. Default is enable. If optOut, opt out public network access configuration.
enum ActionType implements pulumi.PulumiEnum<String> {
  valueEnable("enable"),
  valueOptOut("optOut");

  const ActionType(this.wireValue);
  @override
  final String wireValue;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}

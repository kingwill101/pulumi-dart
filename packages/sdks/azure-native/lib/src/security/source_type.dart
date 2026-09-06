import 'package:pulumi/pulumi.dart' as pulumi;

/// The source type that will trigger the notification
enum SourceType implements pulumi.PulumiEnum<String> {
  alert("Alert"),
  attackPath("AttackPath");

  const SourceType(this.wireValue);
  @override
  final String wireValue;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}

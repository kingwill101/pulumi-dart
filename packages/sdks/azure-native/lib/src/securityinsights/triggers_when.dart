import 'package:pulumi/pulumi.dart' as pulumi;

enum TriggersWhen implements pulumi.PulumiEnum<String> {
  valueCreated("Created"),
  valueUpdated("Updated");

  const TriggersWhen(this.wireValue);
  @override
  final String wireValue;

  static TriggersWhen fromValue(String value) {
    for (final item in TriggersWhen.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggersWhen value: $value');
  }
}

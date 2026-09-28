import 'package:pulumi/pulumi.dart' as pulumi;

enum TargetActionType implements pulumi.PulumiEnum<String> {
  update("update");

  const TargetActionType(this.wireValue);
  @override
  final String wireValue;

  static TargetActionType fromValue(String value) {
    for (final item in TargetActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetActionType value: $value');
  }
}

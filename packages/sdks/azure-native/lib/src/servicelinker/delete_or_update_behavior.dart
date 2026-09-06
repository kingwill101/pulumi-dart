import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether to clean up previous operation when Linker is updating or deleting
enum DeleteOrUpdateBehavior implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueForcedCleanup("ForcedCleanup");

  const DeleteOrUpdateBehavior(this.wireValue);
  @override
  final String wireValue;

  static DeleteOrUpdateBehavior fromValue(String value) {
    for (final item in DeleteOrUpdateBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteOrUpdateBehavior value: $value');
  }
}

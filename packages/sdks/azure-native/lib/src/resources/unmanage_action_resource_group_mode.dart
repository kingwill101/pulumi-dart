import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an action for a newly unmanaged resource group.
enum UnmanageActionResourceGroupMode implements pulumi.PulumiEnum<String> {
  delete("delete"),
  detach("detach");

  const UnmanageActionResourceGroupMode(this.wireValue);
  @override
  final String wireValue;

  static UnmanageActionResourceGroupMode fromValue(String value) {
    for (final item in UnmanageActionResourceGroupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmanageActionResourceGroupMode value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an action for a newly unmanaged resource.
enum UnmanageActionResourceMode implements pulumi.PulumiEnum<String> {
  delete("delete"),
  detach("detach");

  const UnmanageActionResourceMode(this.wireValue);
  @override
  final String wireValue;

  static UnmanageActionResourceMode fromValue(String value) {
    for (final item in UnmanageActionResourceMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmanageActionResourceMode value: $value');
  }
}

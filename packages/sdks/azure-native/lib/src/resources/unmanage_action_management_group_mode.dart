import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an action for a newly unmanaged resource management group.
enum UnmanageActionManagementGroupMode implements pulumi.PulumiEnum<String> {
  delete("delete"),
  detach("detach");

  const UnmanageActionManagementGroupMode(this.wireValue);
  @override
  final String wireValue;

  static UnmanageActionManagementGroupMode fromValue(String value) {
    for (final item in UnmanageActionManagementGroupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmanageActionManagementGroupMode value: $value');
  }
}

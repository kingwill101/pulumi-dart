import 'package:pulumi/pulumi.dart' as pulumi;

/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum InstanceGroupManagerListManagedInstancesResults implements pulumi.PulumiEnum<String> {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const InstanceGroupManagerListManagedInstancesResults(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerListManagedInstancesResults fromValue(String value) {
    for (final item in InstanceGroupManagerListManagedInstancesResults.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerListManagedInstancesResults value: $value');
  }
}

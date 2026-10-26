import 'package:pulumi/pulumi.dart' as pulumi;

/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResults implements pulumi.PulumiEnum<String> {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResults(this.wireValue);
  @override
  final String wireValue;

  static RegionInstanceGroupManagerListManagedInstancesResults fromValue(String value) {
    for (final item in RegionInstanceGroupManagerListManagedInstancesResults.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionInstanceGroupManagerListManagedInstancesResults value: $value');
  }
}

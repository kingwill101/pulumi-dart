import 'package:pulumi/pulumi.dart' as pulumi;

/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResultsComputeV1 implements pulumi.PulumiEnum<String> {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResultsComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RegionInstanceGroupManagerListManagedInstancesResultsComputeV1 fromValue(String value) {
    for (final item in RegionInstanceGroupManagerListManagedInstancesResultsComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionInstanceGroupManagerListManagedInstancesResultsComputeV1 value: $value');
  }
}

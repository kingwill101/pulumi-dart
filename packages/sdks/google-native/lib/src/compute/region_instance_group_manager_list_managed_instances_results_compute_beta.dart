import 'package:pulumi/pulumi.dart' as pulumi;

/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta implements pulumi.PulumiEnum<String> {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta fromValue(String value) {
    for (final item in RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta value: $value');
  }
}

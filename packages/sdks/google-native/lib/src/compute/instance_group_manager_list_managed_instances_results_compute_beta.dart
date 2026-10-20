import 'package:pulumi/pulumi.dart' as pulumi;

/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum InstanceGroupManagerListManagedInstancesResultsComputeBeta implements pulumi.PulumiEnum<String> {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const InstanceGroupManagerListManagedInstancesResultsComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerListManagedInstancesResultsComputeBeta fromValue(String value) {
    for (final item in InstanceGroupManagerListManagedInstancesResultsComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerListManagedInstancesResultsComputeBeta value: $value');
  }
}

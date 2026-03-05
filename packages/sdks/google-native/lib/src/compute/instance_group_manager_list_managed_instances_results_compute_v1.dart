/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum InstanceGroupManagerListManagedInstancesResultsComputeV1 {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const InstanceGroupManagerListManagedInstancesResultsComputeV1(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerListManagedInstancesResultsComputeV1 fromValue(String value) {
    for (final item in InstanceGroupManagerListManagedInstancesResultsComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerListManagedInstancesResultsComputeV1 value: $value');
  }
}


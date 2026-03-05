/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta(this.wireValue);
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


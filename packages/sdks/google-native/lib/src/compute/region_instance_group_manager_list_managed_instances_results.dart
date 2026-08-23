/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResults {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResults(this.wireValue);
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

/// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
enum InstanceAvailabilityTypeAlloydbV1beta {
  availabilityTypeUnspecified("AVAILABILITY_TYPE_UNSPECIFIED"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const InstanceAvailabilityTypeAlloydbV1beta(this.wireValue);
  final String wireValue;

  static InstanceAvailabilityTypeAlloydbV1beta fromValue(String value) {
    for (final item in InstanceAvailabilityTypeAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceAvailabilityTypeAlloydbV1beta value: $value');
  }
}


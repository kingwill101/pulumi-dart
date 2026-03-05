/// The traffic routing method of the Traffic Manager profile.
enum TrafficRoutingMethod {
  performance("Performance"),
  priority("Priority"),
  weighted("Weighted"),
  geographic("Geographic"),
  multiValue("MultiValue"),
  subnet("Subnet");

  const TrafficRoutingMethod(this.wireValue);
  final String wireValue;

  static TrafficRoutingMethod fromValue(String value) {
    for (final item in TrafficRoutingMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficRoutingMethod value: $value');
  }
}


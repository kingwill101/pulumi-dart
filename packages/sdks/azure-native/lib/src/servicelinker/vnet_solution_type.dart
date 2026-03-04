/// Type of VNet solution.
enum VNetSolutionType {
  valueServiceEndpoint("serviceEndpoint"),
  valuePrivateLink("privateLink");

  const VNetSolutionType(this.wireValue);
  final String wireValue;

  static VNetSolutionType fromValue(String value) {
    for (final item in VNetSolutionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VNetSolutionType value: $value');
  }
}

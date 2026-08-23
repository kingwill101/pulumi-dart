/// Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
enum ServicePerimeterPerimeterType {
  perimeterTypeRegular("PERIMETER_TYPE_REGULAR"),
  perimeterTypeBridge("PERIMETER_TYPE_BRIDGE");

  const ServicePerimeterPerimeterType(this.wireValue);
  final String wireValue;

  static ServicePerimeterPerimeterType fromValue(String value) {
    for (final item in ServicePerimeterPerimeterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePerimeterPerimeterType value: $value');
  }
}

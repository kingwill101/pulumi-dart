/// The type of route this is:
/// DEFAULT - By default, every app has routes to the local address ranges specified by RFC1918
/// INHERITED - Routes inherited from the real Virtual Network routes
/// STATIC - Static route set on the app only
///
/// These values will be used for syncing an app's routes with those from a Virtual Network.
enum RouteType {
  valueDEFAULT("DEFAULT"),
  valueINHERITED("INHERITED"),
  valueSTATIC("STATIC");

  const RouteType(this.wireValue);
  final String wireValue;

  static RouteType fromValue(String value) {
    for (final item in RouteType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteType value: $value');
  }
}

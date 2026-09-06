import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection type used for connecting to the instance.
enum ManagedInstanceProxyOverride implements pulumi.PulumiEnum<String> {
  valueProxy("Proxy"),
  valueRedirect("Redirect"),
  valueDefault("Default");

  const ManagedInstanceProxyOverride(this.wireValue);
  @override
  final String wireValue;

  static ManagedInstanceProxyOverride fromValue(String value) {
    for (final item in ManagedInstanceProxyOverride.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceProxyOverride value: $value');
  }
}

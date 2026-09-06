import 'package:pulumi/pulumi.dart' as pulumi;

/// Group connectivity type.
enum GroupConnectivity implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueDirectlyConnected("DirectlyConnected");

  const GroupConnectivity(this.wireValue);
  @override
  final String wireValue;

  static GroupConnectivity fromValue(String value) {
    for (final item in GroupConnectivity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupConnectivity value: $value');
  }
}

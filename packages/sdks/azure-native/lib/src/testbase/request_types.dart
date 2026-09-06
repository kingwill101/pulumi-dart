import 'package:pulumi/pulumi.dart' as pulumi;

enum RequestTypes implements pulumi.PulumiEnum<String> {
  valuePreReleaseAccess("PreReleaseAccess");

  const RequestTypes(this.wireValue);
  @override
  final String wireValue;

  static RequestTypes fromValue(String value) {
    for (final item in RequestTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestTypes value: $value');
  }
}

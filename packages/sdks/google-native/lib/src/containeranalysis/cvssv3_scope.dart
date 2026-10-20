import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSv3Scope implements pulumi.PulumiEnum<String> {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSv3Scope(this.wireValue);
  @override
  final String wireValue;

  static CVSSv3Scope fromValue(String value) {
    for (final item in CVSSv3Scope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3Scope value: $value');
  }
}

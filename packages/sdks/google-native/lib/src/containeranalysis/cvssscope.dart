import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSScope implements pulumi.PulumiEnum<String> {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSScope(this.wireValue);
  @override
  final String wireValue;

  static CVSSScope fromValue(String value) {
    for (final item in CVSSScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSScope value: $value');
  }
}

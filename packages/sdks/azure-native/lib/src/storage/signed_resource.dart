import 'package:pulumi/pulumi.dart' as pulumi;

/// The signed services accessible with the service SAS. Possible values include: Blob (b), Container (c), File (f), Share (s).
enum SignedResource implements pulumi.PulumiEnum<String> {
  valueB("b"),
  valueC("c"),
  valueF("f"),
  valueS("s");

  const SignedResource(this.wireValue);
  @override
  final String wireValue;

  static SignedResource fromValue(String value) {
    for (final item in SignedResource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignedResource value: $value');
  }
}

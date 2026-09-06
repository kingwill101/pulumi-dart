import 'package:pulumi/pulumi.dart' as pulumi;

/// The signed resource types that are accessible with the account SAS. Service (s): Access to service-level APIs; Container (c): Access to container-level APIs; Object (o): Access to object-level APIs for blobs, queue messages, table entities, and files.
enum SignedResourceTypes implements pulumi.PulumiEnum<String> {
  valueS("s"),
  valueC("c"),
  valueO("o");

  const SignedResourceTypes(this.wireValue);
  @override
  final String wireValue;

  static SignedResourceTypes fromValue(String value) {
    for (final item in SignedResourceTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignedResourceTypes value: $value');
  }
}

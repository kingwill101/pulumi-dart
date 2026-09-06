import 'package:pulumi/pulumi.dart' as pulumi;

/// NIC type. This should be either PublicNic or PrivateNic.
enum NicTypeInRequest implements pulumi.PulumiEnum<String> {
  valuePublicNic("PublicNic"),
  valuePrivateNic("PrivateNic");

  const NicTypeInRequest(this.wireValue);
  @override
  final String wireValue;

  static NicTypeInRequest fromValue(String value) {
    for (final item in NicTypeInRequest.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NicTypeInRequest value: $value');
  }
}

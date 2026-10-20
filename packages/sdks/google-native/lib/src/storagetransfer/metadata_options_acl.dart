import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.
enum MetadataOptionsAcl implements pulumi.PulumiEnum<String> {
  aclUnspecified("ACL_UNSPECIFIED"),
  aclDestinationBucketDefault("ACL_DESTINATION_BUCKET_DEFAULT"),
  aclPreserve("ACL_PRESERVE");

  const MetadataOptionsAcl(this.wireValue);
  @override
  final String wireValue;

  static MetadataOptionsAcl fromValue(String value) {
    for (final item in MetadataOptionsAcl.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsAcl value: $value');
  }
}

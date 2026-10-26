import 'package:pulumi/pulumi.dart' as pulumi;

/// The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
enum AuthorizedOrgsDescAssetType implements pulumi.PulumiEnum<String> {
  assetTypeUnspecified("ASSET_TYPE_UNSPECIFIED"),
  assetTypeDevice("ASSET_TYPE_DEVICE"),
  assetTypeCredentialStrength("ASSET_TYPE_CREDENTIAL_STRENGTH");

  const AuthorizedOrgsDescAssetType(this.wireValue);
  @override
  final String wireValue;

  static AuthorizedOrgsDescAssetType fromValue(String value) {
    for (final item in AuthorizedOrgsDescAssetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizedOrgsDescAssetType value: $value');
  }
}

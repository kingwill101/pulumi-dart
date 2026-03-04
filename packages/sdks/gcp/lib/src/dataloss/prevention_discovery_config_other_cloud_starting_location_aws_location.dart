// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation {
  /// The AWS account ID that this discovery config applies to. Within an organization, you can find the AWS account ID inside an AWS account ARN. Example: arn:&lt;partition&gt;:organizations::&lt;management-account-id&gt;:account/&lt;organization-id&gt;/&lt;account-id&gt;
  final pulumi.Input<String>? accountId;

  /// All AWS assets stored in Asset Inventory that didn't match other AWS discovery configs.
  final pulumi.Input<bool>? allAssetInventoryAssets;

  /// Creates a new [PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation].
  /// [accountId] The AWS account ID that this discovery config applies to. Within an organization, you can find the AWS account ID inside an AWS account ARN. Example: arn:&lt;partition&gt;:organizations::&lt;management-account-id&gt;:account/&lt;organization-id&gt;/&lt;account-id&gt;
  /// [allAssetInventoryAssets] All AWS assets stored in Asset Inventory that didn't match other AWS discovery configs.
  PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation({
    this.accountId,
    this.allAssetInventoryAssets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allAssetInventoryAssets': ?allAssetInventoryAssets,
    };
  }

  factory PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allAssetInventoryAssets: (() {
        final guardedValue = map['allAssetInventoryAssets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

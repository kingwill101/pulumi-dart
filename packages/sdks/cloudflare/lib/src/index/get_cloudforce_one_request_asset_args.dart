// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_cloudforce_one_request_asset_get_cloudforce_one_request_asset_args_doc}
/// Arguments for getCloudforceOneRequestAsset.
/// {@endtemplate}
/// {@macro pulumi_index_get_cloudforce_one_request_asset_get_cloudforce_one_request_asset_args_doc}
class GetCloudforceOneRequestAssetArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// UUID.
  final pulumi.Input<String> assetId;
  /// UUID.
  final pulumi.Input<String> requestId;

  /// Creates a new [GetCloudforceOneRequestAssetArgs].
  /// [accountId] Identifier.
  /// [assetId] UUID.
  /// [requestId] UUID.
  const GetCloudforceOneRequestAssetArgs({
    required this.accountId,
    required this.assetId,
    required this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'assetId': assetId,
      'requestId': requestId,
    };
  }

  factory GetCloudforceOneRequestAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestAssetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      assetId: pulumi.Input.fromValue(map['assetId'] as String),
      requestId: pulumi.Input.fromValue(map['requestId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_custom_page_asset_get_custom_page_asset_args_doc}
/// Arguments for getCustomPageAsset.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_page_asset_get_custom_page_asset_args_doc}
class GetCustomPageAssetArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final pulumi.Input<String> assetName;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomPageAssetArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [assetName] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetCustomPageAssetArgs({
    this.accountId,
    required this.assetName,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'assetName': assetName,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomPageAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomPageAssetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assetName: pulumi.Input.fromValue(map['assetName'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

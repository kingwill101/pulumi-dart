// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_data_share_access_policy.dart';
import 'storage_data_share_asset.dart';

/// The storage datashare properties
class StorageDataShareProperties {
  /// List of access policies that specify the permission allowed to a managed identity.
  /// For Create - This property is required and cannot be null. If no access policies are provided at creation time, specify an empty array.
  /// For Update - This property is optional. If set to null or not passed, the existing access policies are left unchanged.
  /// If provided with a non-null value, the existing access policies are replaced with the specified list.
  final pulumi.Input<List<StorageDataShareAccessPolicy>> accessPolicies;
  /// List of assets that specify the properties of the shared resources.
  /// For Create - This property is required and cannot be null. If no assets are provided at creation time, specify an empty array.
  /// For Update - This property is optional. If set to null or not passed, the existing assets are left unchanged.
  /// If provided with a non-null value, the existing assets are replaced with the specified list.
  final pulumi.Input<List<StorageDataShareAsset>> assets;
  /// Arbitrary description of this Data Share. Max 250 characters.
  final pulumi.Input<String?>? description;

  /// Creates a new [StorageDataShareProperties].
  /// [accessPolicies] List of access policies that specify the permission allowed to a managed identity.
  /// [assets] List of assets that specify the properties of the shared resources.
  /// [description] Arbitrary description of this Data Share. Max 250 characters.
  const StorageDataShareProperties({
    required this.accessPolicies,
    required this.assets,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': pulumi.Input.mapInputValue<List<StorageDataShareAccessPolicy>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<StorageDataShareAccessPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assets': pulumi.Input.mapInputValue<List<StorageDataShareAsset>, List<Map<String, dynamic>>>(assets, (value) => pulumi.Input.encodeList<StorageDataShareAsset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
    };
  }

  factory StorageDataShareProperties.fromMap(Map<String, dynamic> map) {
    return StorageDataShareProperties(
      accessPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageDataShareAccessPolicy>(map['accessPolicies']!, (value) => StorageDataShareAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      assets: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageDataShareAsset>(map['assets']!, (value) => StorageDataShareAsset.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_data_share_access_policy_response.dart';
import 'storage_data_share_asset_response.dart';

/// The storage datashare properties
class StorageDataSharePropertiesResponse {
  /// List of access policies that specify the permission allowed to a managed identity.
  /// For Create - This property is required and cannot be null. If no access policies are provided at creation time, specify an empty array.
  /// For Update - This property is optional. If set to null or not passed, the existing access policies are left unchanged.
  /// If provided with a non-null value, the existing access policies are replaced with the specified list.
  final pulumi.Input<List<StorageDataShareAccessPolicyResponse>> accessPolicies;
  /// List of assets that specify the properties of the shared resources.
  /// For Create - This property is required and cannot be null. If no assets are provided at creation time, specify an empty array.
  /// For Update - This property is optional. If set to null or not passed, the existing assets are left unchanged.
  /// If provided with a non-null value, the existing assets are replaced with the specified list.
  final pulumi.Input<List<StorageDataShareAssetResponse>> assets;
  /// System-generated GUID identifier for the Storage DataShare. Not a valid input parameter when creating.
  final pulumi.Input<String> dataShareIdentifier;
  /// The DataShare URI to be shared with the consumer.
  /// URI Format - 'azds://&lt;location&gt;:&lt;dataShareName&gt;:&lt;dataShareIdentifier&gt;'.
  final pulumi.Input<String> dataShareUri;
  /// Arbitrary description of this Data Share. Max 250 characters.
  final pulumi.Input<String>? description;
  /// Represents the provisioning state of the storage datashare.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [StorageDataSharePropertiesResponse].
  /// [accessPolicies] List of access policies that specify the permission allowed to a managed identity.
  /// [assets] List of assets that specify the properties of the shared resources.
  /// [dataShareIdentifier] System-generated GUID identifier for the Storage DataShare. Not a valid input parameter when creating.
  /// [dataShareUri] The DataShare URI to be shared with the consumer.
  /// [description] Arbitrary description of this Data Share. Max 250 characters.
  /// [provisioningState] Represents the provisioning state of the storage datashare.
  const StorageDataSharePropertiesResponse({
    required this.accessPolicies,
    required this.assets,
    required this.dataShareIdentifier,
    required this.dataShareUri,
    this.description,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': pulumi.Input.mapInputValue<List<StorageDataShareAccessPolicyResponse>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<StorageDataShareAccessPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assets': pulumi.Input.mapInputValue<List<StorageDataShareAssetResponse>, List<Map<String, dynamic>>>(assets, (value) => pulumi.Input.encodeList<StorageDataShareAssetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataShareIdentifier': dataShareIdentifier,
      'dataShareUri': dataShareUri,
      'description': ?description,
      'provisioningState': provisioningState,
    };
  }

  factory StorageDataSharePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageDataSharePropertiesResponse(
      accessPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageDataShareAccessPolicyResponse>(map['accessPolicies']!, (value) => StorageDataShareAccessPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      assets: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageDataShareAssetResponse>(map['assets']!, (value) => StorageDataShareAssetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dataShareIdentifier: pulumi.Input.fromValue(map['dataShareIdentifier'] as String),
      dataShareUri: pulumi.Input.fromValue(map['dataShareUri'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

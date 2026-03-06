// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_asset_resource_spec_read_access_mode.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec_type.dart';

/// Identifies the cloud resource that is referenced by this asset.
class GoogleCloudDataplexV1AssetResourceSpec {
  /// Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  final pulumi.Input<String>? name;
  /// Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  final pulumi.Input<GoogleCloudDataplexV1AssetResourceSpecReadAccessMode>? readAccessMode;
  /// Immutable. Type of resource.
  final pulumi.Input<GoogleCloudDataplexV1AssetResourceSpecType> type;

  /// Creates a new [GoogleCloudDataplexV1AssetResourceSpec].
  /// [name] Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  /// [readAccessMode] Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  /// [type] Immutable. Type of resource.
  const GoogleCloudDataplexV1AssetResourceSpec({
    this.name,
    this.readAccessMode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'readAccessMode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1AssetResourceSpecReadAccessMode, String>(readAccessMode, (value) => value.wireValue),
      'type': pulumi.Input.mapInputValue<GoogleCloudDataplexV1AssetResourceSpecType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDataplexV1AssetResourceSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetResourceSpec(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readAccessMode: (() { final guardedValue = map['readAccessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1AssetResourceSpecReadAccessMode.fromValue(guardedValue as String)); })(),
      type: pulumi.Input.fromValue(GoogleCloudDataplexV1AssetResourceSpecType.fromValue(map['type']! as String)),
    );
  }
}


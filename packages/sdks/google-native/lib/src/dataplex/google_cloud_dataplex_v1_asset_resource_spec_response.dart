// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies the cloud resource that is referenced by this asset.
class GoogleCloudDataplexV1AssetResourceSpecResponse {
  /// Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  final pulumi.Input<String> name;

  /// Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  final pulumi.Input<String> readAccessMode;

  /// Immutable. Type of resource.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDataplexV1AssetResourceSpecResponse].
  /// [name] Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  /// [readAccessMode] Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  /// [type] Immutable. Type of resource.
  GoogleCloudDataplexV1AssetResourceSpecResponse({
    required this.name,
    required this.readAccessMode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'readAccessMode': readAccessMode,
      'type': type,
    };
  }

  factory GoogleCloudDataplexV1AssetResourceSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1AssetResourceSpecResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      readAccessMode: pulumi.Input.fromValue(map['readAccessMode'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

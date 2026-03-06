// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata common to many entities in this API.
class GoogleCloudApigeeV1EntityMetadataResponse {
  /// Time at which the API proxy was created, in milliseconds since epoch.
  final pulumi.Input<String> createdAt;
  /// Time at which the API proxy was most recently modified, in milliseconds since epoch.
  final pulumi.Input<String> lastModifiedAt;
  /// The type of entity described
  final pulumi.Input<String> subType;

  /// Creates a new [GoogleCloudApigeeV1EntityMetadataResponse].
  /// [createdAt] Time at which the API proxy was created, in milliseconds since epoch.
  /// [lastModifiedAt] Time at which the API proxy was most recently modified, in milliseconds since epoch.
  /// [subType] The type of entity described
  const GoogleCloudApigeeV1EntityMetadataResponse({
    required this.createdAt,
    required this.lastModifiedAt,
    required this.subType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'lastModifiedAt': lastModifiedAt,
      'subType': subType,
    };
  }

  factory GoogleCloudApigeeV1EntityMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1EntityMetadataResponse(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      lastModifiedAt: pulumi.Input.fromValue(map['lastModifiedAt'] as String),
      subType: pulumi.Input.fromValue(map['subType'] as String),
    );
  }
}


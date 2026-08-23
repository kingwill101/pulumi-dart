// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides compatibility information for a specific metadata store.
class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse {
  /// Whether the entity is compatible and can be represented in the metadata store.
  final pulumi.Input<bool> compatible;
  /// Provides additional detail if the entity is incompatible with the metadata store.
  final pulumi.Input<String> reason;

  /// Creates a new [GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse].
  /// [compatible] Whether the entity is compatible and can be represented in the metadata store.
  /// [reason] Provides additional detail if the entity is incompatible with the metadata store.
  const GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse({
    required this.compatible,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatible': compatible,
      'reason': reason,
    };
  }

  factory GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse(
      compatible: pulumi.Input.fromValue(map['compatible'] as bool),
      reason: pulumi.Input.fromValue(map['reason'] as String),
    );
  }
}

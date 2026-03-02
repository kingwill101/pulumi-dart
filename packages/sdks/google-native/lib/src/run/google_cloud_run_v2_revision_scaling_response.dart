// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for revision-level scaling settings.
class GoogleCloudRunV2RevisionScalingResponse {
  /// Maximum number of serving instances that this resource should have.
  final pulumi.Input<int> maxInstanceCount;
  /// Minimum number of serving instances that this resource should have.
  final pulumi.Input<int> minInstanceCount;

  /// Creates a new [GoogleCloudRunV2RevisionScalingResponse].
  /// [maxInstanceCount] Maximum number of serving instances that this resource should have.
  /// [minInstanceCount] Minimum number of serving instances that this resource should have.
  GoogleCloudRunV2RevisionScalingResponse({
    required this.maxInstanceCount,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
    };
  }

  factory GoogleCloudRunV2RevisionScalingResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2RevisionScalingResponse(
      maxInstanceCount: (map['maxInstanceCount'] as int).input(),
      minInstanceCount: (map['minInstanceCount'] as int).input(),
    );
  }
}


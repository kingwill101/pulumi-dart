// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeConfig for setting the min/max number of nodes associated with the environment.
class GoogleCloudApigeeV1NodeConfigResponse {
  /// The current total number of gateway nodes that each environment currently has across all instances.
  final pulumi.Input<String> currentAggregateNodeCount;

  /// Optional. The maximum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended maximum number of nodes for that gateway.
  final pulumi.Input<String> maxNodeCount;

  /// Optional. The minimum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended minimum number of nodes for that gateway.
  final pulumi.Input<String> minNodeCount;

  /// Creates a new [GoogleCloudApigeeV1NodeConfigResponse].
  /// [currentAggregateNodeCount] The current total number of gateway nodes that each environment currently has across all instances.
  /// [maxNodeCount] Optional. The maximum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended maximum number of nodes for that gateway.
  /// [minNodeCount] Optional. The minimum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended minimum number of nodes for that gateway.
  GoogleCloudApigeeV1NodeConfigResponse({
    required this.currentAggregateNodeCount,
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAggregateNodeCount': currentAggregateNodeCount,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory GoogleCloudApigeeV1NodeConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1NodeConfigResponse(
      currentAggregateNodeCount: pulumi.Input.fromValue(
        map['currentAggregateNodeCount'] as String,
      ),
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as String),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as String),
    );
  }
}

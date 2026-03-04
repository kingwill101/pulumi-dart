// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicaInfoResponse {
  /// If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  final pulumi.Input<bool> defaultLeaderLocation;

  /// The location of the serving resources, e.g. "us-central1".
  final pulumi.Input<String> location;

  /// The type of replica.
  final pulumi.Input<String> type;

  /// Creates a new [ReplicaInfoResponse].
  /// [defaultLeaderLocation] If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  /// [location] The location of the serving resources, e.g. "us-central1".
  /// [type] The type of replica.
  ReplicaInfoResponse({
    required this.defaultLeaderLocation,
    required this.location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLeaderLocation': defaultLeaderLocation,
      'location': location,
      'type': type,
    };
  }

  factory ReplicaInfoResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaInfoResponse(
      defaultLeaderLocation: pulumi.Input.fromValue(
        map['defaultLeaderLocation'] as bool,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

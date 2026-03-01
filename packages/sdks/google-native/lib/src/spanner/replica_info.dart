// ignore_for_file: unused_element, unnecessary_cast

import 'replica_info_type.dart';

class ReplicaInfo {
  /// If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  final bool? defaultLeaderLocation;
  /// The location of the serving resources, e.g. "us-central1".
  final String? location;
  /// The type of replica.
  final ReplicaInfoType? type;

  /// Creates a new [ReplicaInfo].
  /// [defaultLeaderLocation] If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  /// [location] The location of the serving resources, e.g. "us-central1".
  /// [type] The type of replica.
  ReplicaInfo({
    this.defaultLeaderLocation,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLeaderLocation': ?defaultLeaderLocation,
      'location': ?location,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ReplicaInfo.fromMap(Map<String, dynamic> map) {
    return ReplicaInfo(
      defaultLeaderLocation: map['defaultLeaderLocation'] == null ? null : map['defaultLeaderLocation'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      type: map['type'] == null ? null : ReplicaInfoType.fromValue(map['type'] as String),
    );
  }
}


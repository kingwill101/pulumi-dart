// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_info_type.dart';

class ReplicaInfo {
  /// If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  final pulumi.Input<bool>? defaultLeaderLocation;
  /// The location of the serving resources, e.g. "us-central1".
  final pulumi.Input<String>? location;
  /// The type of replica.
  final pulumi.Input<ReplicaInfoType>? type;

  /// Creates a new [ReplicaInfo].
  /// [defaultLeaderLocation] If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  /// [location] The location of the serving resources, e.g. "us-central1".
  /// [type] The type of replica.
  const ReplicaInfo({
    this.defaultLeaderLocation,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLeaderLocation': ?defaultLeaderLocation,
      'location': ?location,
      'type': ?pulumi.Input.mapOptionalInputValue<ReplicaInfoType, String>(type, (value) => value.wireValue),
    };
  }

  factory ReplicaInfo.fromMap(Map<String, dynamic> map) {
    return ReplicaInfo(
      defaultLeaderLocation: (() { final guardedValue = map['defaultLeaderLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicaInfoType.fromValue(guardedValue as String)); })(),
    );
  }
}

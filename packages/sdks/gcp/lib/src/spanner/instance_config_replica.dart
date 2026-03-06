// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfigReplica {
  /// If true, this location is designated as the default leader location where
  /// leader replicas are placed.
  final pulumi.Input<bool>? defaultLeaderLocation;
  /// The location of the serving resources, e.g. "us-central1".
  final pulumi.Input<String>? location;
  /// Indicates the type of replica.  See the [replica types
  /// documentation](https://cloud.google.com/spanner/docs/replication#replica_types)
  /// for more details.
  /// Possible values are: `READ_WRITE`, `READ_ONLY`, `WITNESS`.
  final pulumi.Input<String>? type;

  /// Creates a new [InstanceConfigReplica].
  /// [defaultLeaderLocation] If true, this location is designated as the default leader location where
  /// [location] The location of the serving resources, e.g. "us-central1".
  /// [type] Indicates the type of replica.  See the [replica types
  const InstanceConfigReplica({
    this.defaultLeaderLocation,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLeaderLocation': ?defaultLeaderLocation,
      'location': ?location,
      'type': ?type,
    };
  }

  factory InstanceConfigReplica.fromMap(Map<String, dynamic> map) {
    return InstanceConfigReplica(
      defaultLeaderLocation: (() { final guardedValue = map['defaultLeaderLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


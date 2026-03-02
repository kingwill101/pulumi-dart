// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Replica for this Secret.
class ReplicaSecretmanagerV1beta1 {
  /// The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  final pulumi.Input<String>? location;

  /// Creates a new [ReplicaSecretmanagerV1beta1].
  /// [location] The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  ReplicaSecretmanagerV1beta1({
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
    };
  }

  factory ReplicaSecretmanagerV1beta1.fromMap(Map<String, dynamic> map) {
    return ReplicaSecretmanagerV1beta1(
      location: map['location'] == null ? null : (map['location']! as String).input(),
    );
  }
}


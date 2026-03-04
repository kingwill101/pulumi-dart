// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Replica for this Secret.
class ReplicaResponseSecretmanagerV1beta1 {
  /// The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  final pulumi.Input<String> location;

  /// Creates a new [ReplicaResponseSecretmanagerV1beta1].
  /// [location] The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  ReplicaResponseSecretmanagerV1beta1({required this.location});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location};
  }

  factory ReplicaResponseSecretmanagerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicaResponseSecretmanagerV1beta1(
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

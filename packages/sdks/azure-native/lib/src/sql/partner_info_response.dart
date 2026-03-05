// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Partner server information for the failover group.
class PartnerInfoResponse {
  /// Resource identifier of the partner server.
  final pulumi.Input<String> id;
  /// Geo location of the partner server.
  final pulumi.Input<String> location;
  /// Replication role of the partner server.
  final pulumi.Input<String> replicationRole;

  /// Creates a new [PartnerInfoResponse].
  /// [id] Resource identifier of the partner server.
  /// [location] Geo location of the partner server.
  /// [replicationRole] Replication role of the partner server.
  PartnerInfoResponse({
    required this.id,
    required this.location,
    required this.replicationRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'replicationRole': replicationRole,
    };
  }

  factory PartnerInfoResponse.fromMap(Map<String, dynamic> map) {
    return PartnerInfoResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      replicationRole: pulumi.Input.fromValue(map['replicationRole'] as String),
    );
  }
}


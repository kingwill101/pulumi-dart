// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedInstanceFailoverGroupPartnerRegion {
  /// The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The partner replication role of the Managed Instance Failover Group.
  final pulumi.Input<String>? role;

  /// Creates a new [ManagedInstanceFailoverGroupPartnerRegion].
  /// [location] The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  /// [role] The partner replication role of the Managed Instance Failover Group.
  ManagedInstanceFailoverGroupPartnerRegion({
    this.location,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'role': ?role,
    };
  }

  factory ManagedInstanceFailoverGroupPartnerRegion.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceFailoverGroupPartnerRegion(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}


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
  const ManagedInstanceFailoverGroupPartnerRegion({
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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


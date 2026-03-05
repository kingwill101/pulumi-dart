// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MembersMember {
  /// The IP address of the members to receive traffic from
  /// the load balancer.
  final pulumi.Input<String> address;
  /// The administrative state of the member.
  /// A valid value is true (UP) or false (DOWN). Defaults to true.
  final pulumi.Input<bool>? adminStateUp;
  /// A bool that indicates whether the member is
  /// backup. **Requires octavia minor version 2.1 or later**.
  final pulumi.Input<bool>? backup;
  /// The unique ID for the members.
  final pulumi.Input<String>? id;
  /// An alternate IP address used for health
  /// monitoring a backend member.
  final pulumi.Input<String>? monitorAddress;
  /// An alternate protocol port used for health
  /// monitoring a backend member.
  final pulumi.Input<int>? monitorPort;
  /// Human-readable name for the member.
  final pulumi.Input<String>? name;
  /// The port on which to listen for client traffic.
  final pulumi.Input<int> protocolPort;
  /// The subnet in which to access the member.
  final pulumi.Input<String>? subnetId;
  /// A positive integer value that indicates the relative
  /// portion of traffic that this members should receive from the pool. For
  /// example, a member with a weight of 10 receives five times as much traffic
  /// as a member with a weight of 2. Defaults to 1.
  final pulumi.Input<int>? weight;

  /// Creates a new [MembersMember].
  /// [address] The IP address of the members to receive traffic from
  /// [adminStateUp] The administrative state of the member.
  /// [backup] A bool that indicates whether the member is
  /// [id] The unique ID for the members.
  /// [monitorAddress] An alternate IP address used for health
  /// [monitorPort] An alternate protocol port used for health
  /// [name] Human-readable name for the member.
  /// [protocolPort] The port on which to listen for client traffic.
  /// [subnetId] The subnet in which to access the member.
  /// [weight] A positive integer value that indicates the relative
  MembersMember({
    required this.address,
    this.adminStateUp,
    this.backup,
    this.id,
    this.monitorAddress,
    this.monitorPort,
    this.name,
    required this.protocolPort,
    this.subnetId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'adminStateUp': ?adminStateUp,
      'backup': ?backup,
      'id': ?id,
      'monitorAddress': ?monitorAddress,
      'monitorPort': ?monitorPort,
      'name': ?name,
      'protocolPort': protocolPort,
      'subnetId': ?subnetId,
      'weight': ?weight,
    };
  }

  factory MembersMember.fromMap(Map<String, dynamic> map) {
    return MembersMember(
      address: pulumi.Input.fromValue(map['address'] as String),
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorAddress: (() { final guardedValue = map['monitorAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorPort: (() { final guardedValue = map['monitorPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolPort: pulumi.Input.fromValue(map['protocolPort'] as int),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


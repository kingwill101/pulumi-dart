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
      address: (map['address'] as String).input(),
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp']! as bool).input(),
      backup: map['backup'] == null ? null : (map['backup']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      monitorAddress: map['monitorAddress'] == null ? null : (map['monitorAddress']! as String).input(),
      monitorPort: map['monitorPort'] == null ? null : (map['monitorPort']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protocolPort: (map['protocolPort'] as int).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}


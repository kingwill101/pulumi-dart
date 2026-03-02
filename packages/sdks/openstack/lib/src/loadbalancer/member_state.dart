// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Member resources.
class MemberState {
  /// The IP address of the member to receive traffic from
  /// the load balancer. Changing this creates a new member.
  final pulumi.Input<String>? address;
  /// The administrative state of the member.
  /// A valid value is true (UP) or false (DOWN). Defaults to true.
  final pulumi.Input<bool>? adminStateUp;
  /// Boolean that indicates whether that member works as a backup or not. Available
  /// only for Octavia >= 2.1.
  final pulumi.Input<bool>? backup;
  /// An alternate IP address used for health monitoring a backend member.
  /// Available only for Octavia
  final pulumi.Input<String>? monitorAddress;
  /// An alternate protocol port used for health monitoring a backend member.
  /// Available only for Octavia
  final pulumi.Input<int>? monitorPort;
  /// Human-readable name for the member.
  final pulumi.Input<String>? name;
  /// The id of the pool that this member will be assigned
  /// to. Changing this creates a new member.
  final pulumi.Input<String>? poolId;
  /// The port on which to listen for client traffic.
  /// Changing this creates a new member.
  final pulumi.Input<int>? protocolPort;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a member. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new member.
  final pulumi.Input<String>? region;
  /// The subnet in which to access the member. Changing
  /// this creates a new member.
  final pulumi.Input<String>? subnetId;
  /// A list of simple strings assigned to the member.
  /// Available only for Octavia >= 2.5.
  final pulumi.Input<List<String>>? tags;
  /// Required for admins. The UUID of the tenant who owns
  /// the member.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new member.
  final pulumi.Input<String>? tenantId;
  /// A positive integer value that indicates the relative
  /// portion of traffic that this member should receive from the pool. For
  /// example, a member with a weight of 10 receives five times as much traffic
  /// as a member with a weight of 2. Defaults to 1.
  final pulumi.Input<int>? weight;

  /// Creates a new [MemberState].
  /// [address] The IP address of the member to receive traffic from
  /// [adminStateUp] The administrative state of the member.
  /// [backup] Boolean that indicates whether that member works as a backup or not. Available
  /// [monitorAddress] An alternate IP address used for health monitoring a backend member.
  /// [monitorPort] An alternate protocol port used for health monitoring a backend member.
  /// [name] Human-readable name for the member.
  /// [poolId] The id of the pool that this member will be assigned
  /// [protocolPort] The port on which to listen for client traffic.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [subnetId] The subnet in which to access the member. Changing
  /// [tags] A list of simple strings assigned to the member.
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  /// [weight] A positive integer value that indicates the relative
  MemberState({
    this.address,
    this.adminStateUp,
    this.backup,
    this.monitorAddress,
    this.monitorPort,
    this.name,
    this.poolId,
    this.protocolPort,
    this.region,
    this.subnetId,
    this.tags,
    this.tenantId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'adminStateUp': ?adminStateUp,
      'backup': ?backup,
      'monitorAddress': ?monitorAddress,
      'monitorPort': ?monitorPort,
      'name': ?name,
      'poolId': ?poolId,
      'protocolPort': ?protocolPort,
      'region': ?region,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'weight': ?weight,
    };
  }

  factory MemberState.fromMap(Map<String, dynamic> map) {
    return MemberState(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp'] as bool).input(),
      backup: map['backup'] == null ? null : (map['backup'] as bool).input(),
      monitorAddress: map['monitorAddress'] == null ? null : (map['monitorAddress'] as String).input(),
      monitorPort: map['monitorPort'] == null ? null : (map['monitorPort'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      poolId: map['poolId'] == null ? null : (map['poolId'] as String).input(),
      protocolPort: map['protocolPort'] == null ? null : (map['protocolPort'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}


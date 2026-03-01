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
    pulumi.Output<String>? address,
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<bool>? backup,
    pulumi.Output<String>? monitorAddress,
    pulumi.Output<int>? monitorPort,
    pulumi.Output<String>? name,
    pulumi.Output<String>? poolId,
    pulumi.Output<int>? protocolPort,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subnetId,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<int>? weight,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      backup = pulumi.Input.asOptionalInput<bool>(backup),
      monitorAddress = pulumi.Input.asOptionalInput<String>(monitorAddress),
      monitorPort = pulumi.Input.asOptionalInput<int>(monitorPort),
      name = pulumi.Input.asOptionalInput<String>(name),
      poolId = pulumi.Input.asOptionalInput<String>(poolId),
      protocolPort = pulumi.Input.asOptionalInput<int>(protocolPort),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      weight = pulumi.Input.asOptionalInput<int>(weight);

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
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      backup: map['backup'] == null ? null : pulumi.Output.create<bool>(map['backup'] as bool),
      monitorAddress: map['monitorAddress'] == null ? null : pulumi.Output.create<String>(map['monitorAddress'] as String),
      monitorPort: map['monitorPort'] == null ? null : pulumi.Output.create<int>(map['monitorPort'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      poolId: map['poolId'] == null ? null : pulumi.Output.create<String>(map['poolId'] as String),
      protocolPort: map['protocolPort'] == null ? null : pulumi.Output.create<int>(map['protocolPort'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}


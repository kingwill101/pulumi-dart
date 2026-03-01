// ignore_for_file: unused_element, unnecessary_cast


class MembersMember {
  /// The IP address of the members to receive traffic from
  /// the load balancer.
  final String address;
  /// The administrative state of the member.
  /// A valid value is true (UP) or false (DOWN). Defaults to true.
  final bool? adminStateUp;
  /// A bool that indicates whether the member is
  /// backup. **Requires octavia minor version 2.1 or later**.
  final bool? backup;
  /// The unique ID for the members.
  final String? id;
  /// An alternate IP address used for health
  /// monitoring a backend member.
  final String? monitorAddress;
  /// An alternate protocol port used for health
  /// monitoring a backend member.
  final int? monitorPort;
  /// Human-readable name for the member.
  final String? name;
  /// The port on which to listen for client traffic.
  final int protocolPort;
  /// The subnet in which to access the member.
  final String? subnetId;
  /// A positive integer value that indicates the relative
  /// portion of traffic that this members should receive from the pool. For
  /// example, a member with a weight of 10 receives five times as much traffic
  /// as a member with a weight of 2. Defaults to 1.
  final int? weight;

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
      address: map['address'] as String,
      adminStateUp: map['adminStateUp'] == null ? null : map['adminStateUp'] as bool,
      backup: map['backup'] == null ? null : map['backup'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      monitorAddress: map['monitorAddress'] == null ? null : map['monitorAddress'] as String,
      monitorPort: map['monitorPort'] == null ? null : map['monitorPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocolPort: map['protocolPort'] as int,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}


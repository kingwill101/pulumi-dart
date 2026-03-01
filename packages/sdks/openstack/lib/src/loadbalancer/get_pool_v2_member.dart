// ignore_for_file: unused_element, unnecessary_cast


class GetPoolV2Member {
  final String address;
  /// The administrative state of the Pool, which is up (true)
  /// or down (false).
  final bool adminStateUp;
  final bool backup;
  final String id;
  final String monitorAddress;
  final int monitorPort;
  /// The name of the pool. Exactly one of `name`, `pool_id`
  /// is required to be set.
  final String name;
  /// The operating status of the pool.
  final String operatingStatus;
  /// The ID of the pool. Exactly one of `name`, `pool_id`
  /// is required to be set.
  final String poolId;
  /// The owner (project/tenant) ID of the pool.
  final String projectId;
  final int protocolPort;
  /// The provisioning status of the pool.
  final String provisioningStatus;
  final String subnetId;
  /// A set of tags applied to the loadbalancer's pool. The
  /// loadbalancer' pool will be returned if it has all of the specified tags.
  final List<String> tags;
  final int weight;

  /// Creates a new [GetPoolV2Member].
  /// [address] Required.
  /// [adminStateUp] The administrative state of the Pool, which is up (true)
  /// [backup] Required.
  /// [id] Required.
  /// [monitorAddress] Required.
  /// [monitorPort] Required.
  /// [name] The name of the pool. Exactly one of `name`, `pool_id`
  /// [operatingStatus] The operating status of the pool.
  /// [poolId] The ID of the pool. Exactly one of `name`, `pool_id`
  /// [projectId] The owner (project/tenant) ID of the pool.
  /// [protocolPort] Required.
  /// [provisioningStatus] The provisioning status of the pool.
  /// [subnetId] Required.
  /// [tags] A set of tags applied to the loadbalancer's pool. The
  /// [weight] Required.
  GetPoolV2Member({
    required this.address,
    required this.adminStateUp,
    required this.backup,
    required this.id,
    required this.monitorAddress,
    required this.monitorPort,
    required this.name,
    required this.operatingStatus,
    required this.poolId,
    required this.projectId,
    required this.protocolPort,
    required this.provisioningStatus,
    required this.subnetId,
    required this.tags,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'adminStateUp': adminStateUp,
      'backup': backup,
      'id': id,
      'monitorAddress': monitorAddress,
      'monitorPort': monitorPort,
      'name': name,
      'operatingStatus': operatingStatus,
      'poolId': poolId,
      'projectId': projectId,
      'protocolPort': protocolPort,
      'provisioningStatus': provisioningStatus,
      'subnetId': subnetId,
      'tags': tags,
      'weight': weight,
    };
  }

  factory GetPoolV2Member.fromMap(Map<String, dynamic> map) {
    return GetPoolV2Member(
      address: map['address'] as String,
      adminStateUp: map['adminStateUp'] as bool,
      backup: map['backup'] as bool,
      id: map['id'] as String,
      monitorAddress: map['monitorAddress'] as String,
      monitorPort: map['monitorPort'] as int,
      name: map['name'] as String,
      operatingStatus: map['operatingStatus'] as String,
      poolId: map['poolId'] as String,
      projectId: map['projectId'] as String,
      protocolPort: map['protocolPort'] as int,
      provisioningStatus: map['provisioningStatus'] as String,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as List).cast<String>(),
      weight: map['weight'] as int,
    );
  }
}


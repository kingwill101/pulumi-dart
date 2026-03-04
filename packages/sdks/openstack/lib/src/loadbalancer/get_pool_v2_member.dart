// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolV2Member {
  final pulumi.Input<String> address;

  /// The administrative state of the Pool, which is up (true)
  /// or down (false).
  final pulumi.Input<bool> adminStateUp;
  final pulumi.Input<bool> backup;
  final pulumi.Input<String> id;
  final pulumi.Input<String> monitorAddress;
  final pulumi.Input<int> monitorPort;

  /// The name of the pool. Exactly one of `name`, `pool_id`
  /// is required to be set.
  final pulumi.Input<String> name;

  /// The operating status of the pool.
  final pulumi.Input<String> operatingStatus;

  /// The ID of the pool. Exactly one of `name`, `pool_id`
  /// is required to be set.
  final pulumi.Input<String> poolId;

  /// The owner (project/tenant) ID of the pool.
  final pulumi.Input<String> projectId;
  final pulumi.Input<int> protocolPort;

  /// The provisioning status of the pool.
  final pulumi.Input<String> provisioningStatus;
  final pulumi.Input<String> subnetId;

  /// A set of tags applied to the loadbalancer's pool. The
  /// loadbalancer' pool will be returned if it has all of the specified tags.
  final pulumi.Input<List<String>> tags;
  final pulumi.Input<int> weight;

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
      address: pulumi.Input.fromValue(map['address'] as String),
      adminStateUp: pulumi.Input.fromValue(map['adminStateUp'] as bool),
      backup: pulumi.Input.fromValue(map['backup'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      monitorAddress: pulumi.Input.fromValue(map['monitorAddress'] as String),
      monitorPort: pulumi.Input.fromValue(map['monitorPort'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      operatingStatus: pulumi.Input.fromValue(map['operatingStatus'] as String),
      poolId: pulumi.Input.fromValue(map['poolId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      protocolPort: pulumi.Input.fromValue(map['protocolPort'] as int),
      provisioningStatus: pulumi.Input.fromValue(
        map['provisioningStatus'] as String,
      ),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

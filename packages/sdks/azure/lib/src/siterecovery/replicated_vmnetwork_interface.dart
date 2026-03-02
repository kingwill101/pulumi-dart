// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatedVMNetworkInterface {
  /// Id of the public IP object to use when a test failover is done.
  final pulumi.Input<String>? failoverTestPublicIpAddressId;
  /// Static IP to assign when a test failover is done.
  final pulumi.Input<String>? failoverTestStaticIp;
  /// Name of the subnet to use when a test failover is done.
  final pulumi.Input<String>? failoverTestSubnetName;
  /// A list of IDs of Load Balancer Backend Address Pools to use when a failover is done.
  final pulumi.Input<List<String>>? recoveryLoadBalancerBackendAddressPoolIds;
  /// Id of the public IP object to use when a failover is done.
  final pulumi.Input<String>? recoveryPublicIpAddressId;
  /// (Required if the network_interface block is specified) Id source network interface.
  final pulumi.Input<String>? sourceNetworkInterfaceId;
  /// Static IP to assign when a failover is done.
  final pulumi.Input<String>? targetStaticIp;
  /// Name of the subnet to use when a failover is done.
  final pulumi.Input<String>? targetSubnetName;

  /// Creates a new [ReplicatedVMNetworkInterface].
  /// [failoverTestPublicIpAddressId] Id of the public IP object to use when a test failover is done.
  /// [failoverTestStaticIp] Static IP to assign when a test failover is done.
  /// [failoverTestSubnetName] Name of the subnet to use when a test failover is done.
  /// [recoveryLoadBalancerBackendAddressPoolIds] A list of IDs of Load Balancer Backend Address Pools to use when a failover is done.
  /// [recoveryPublicIpAddressId] Id of the public IP object to use when a failover is done.
  /// [sourceNetworkInterfaceId] (Required if the network_interface block is specified) Id source network interface.
  /// [targetStaticIp] Static IP to assign when a failover is done.
  /// [targetSubnetName] Name of the subnet to use when a failover is done.
  ReplicatedVMNetworkInterface({
    this.failoverTestPublicIpAddressId,
    this.failoverTestStaticIp,
    this.failoverTestSubnetName,
    this.recoveryLoadBalancerBackendAddressPoolIds,
    this.recoveryPublicIpAddressId,
    this.sourceNetworkInterfaceId,
    this.targetStaticIp,
    this.targetSubnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverTestPublicIpAddressId': ?failoverTestPublicIpAddressId,
      'failoverTestStaticIp': ?failoverTestStaticIp,
      'failoverTestSubnetName': ?failoverTestSubnetName,
      'recoveryLoadBalancerBackendAddressPoolIds': ?recoveryLoadBalancerBackendAddressPoolIds,
      'recoveryPublicIpAddressId': ?recoveryPublicIpAddressId,
      'sourceNetworkInterfaceId': ?sourceNetworkInterfaceId,
      'targetStaticIp': ?targetStaticIp,
      'targetSubnetName': ?targetSubnetName,
    };
  }

  factory ReplicatedVMNetworkInterface.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMNetworkInterface(
      failoverTestPublicIpAddressId: map['failoverTestPublicIpAddressId'] == null ? null : (map['failoverTestPublicIpAddressId']! as String).input(),
      failoverTestStaticIp: map['failoverTestStaticIp'] == null ? null : (map['failoverTestStaticIp']! as String).input(),
      failoverTestSubnetName: map['failoverTestSubnetName'] == null ? null : (map['failoverTestSubnetName']! as String).input(),
      recoveryLoadBalancerBackendAddressPoolIds: map['recoveryLoadBalancerBackendAddressPoolIds'] == null ? null : ((map['recoveryLoadBalancerBackendAddressPoolIds']! as List).cast<String>()).input(),
      recoveryPublicIpAddressId: map['recoveryPublicIpAddressId'] == null ? null : (map['recoveryPublicIpAddressId']! as String).input(),
      sourceNetworkInterfaceId: map['sourceNetworkInterfaceId'] == null ? null : (map['sourceNetworkInterfaceId']! as String).input(),
      targetStaticIp: map['targetStaticIp'] == null ? null : (map['targetStaticIp']! as String).input(),
      targetSubnetName: map['targetSubnetName'] == null ? null : (map['targetSubnetName']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_address_pool_response.dart';

/// Represents configuration parameters for the MetalLB load balancer.
class VmwareMetalLbConfigResponse {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final pulumi.Input<List<VmwareAddressPoolResponse>> addressPools;

  /// Creates a new [VmwareMetalLbConfigResponse].
  /// [addressPools] AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  VmwareMetalLbConfigResponse({
    required this.addressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools': pulumi.Input.mapInputValue<List<VmwareAddressPoolResponse>, List<Map<String, dynamic>>>(addressPools, (value) => pulumi.Input.encodeList<VmwareAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VmwareMetalLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareMetalLbConfigResponse(
      addressPools: (pulumi.Input.decodeList<VmwareAddressPoolResponse>(map['addressPools'], (value) => VmwareAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceNetwork {
  /// Specifies the Name of the resource group containing network resources of Azure Spring Cloud Apps. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? appNetworkResourceGroup;
  /// Specifies the ID of the Subnet which should host the Spring Boot Applications deployed in this Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> appSubnetId;
  /// A list of (at least 3) CIDR ranges (at least /16) which are used to host the Spring Cloud infrastructure, which must not overlap with any existing CIDR ranges in the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> cidrRanges;
  /// Specifies the egress traffic type of the Spring Cloud Service. Possible values are `loadBalancer` and `userDefinedRouting`. Defaults to `loadBalancer`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? outboundType;
  /// Ingress read time out in seconds.
  final pulumi.Input<int?>? readTimeoutSeconds;
  /// Specifies the Name of the resource group containing network resources of Azure Spring Cloud Service Runtime. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? serviceRuntimeNetworkResourceGroup;
  /// Specifies the ID of the Subnet where the Service Runtime components of the Spring Cloud Service will exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> serviceRuntimeSubnetId;

  /// Creates a new [SpringCloudServiceNetwork].
  /// [appNetworkResourceGroup] Specifies the Name of the resource group containing network resources of Azure Spring Cloud Apps. Changing this forces a new resource to be created.
  /// [appSubnetId] Specifies the ID of the Subnet which should host the Spring Boot Applications deployed in this Spring Cloud Service. Changing this forces a new resource to be created.
  /// [cidrRanges] A list of (at least 3) CIDR ranges (at least /16) which are used to host the Spring Cloud infrastructure, which must not overlap with any existing CIDR ranges in the Subnet. Changing this forces a new resource to be created.
  /// [outboundType] Specifies the egress traffic type of the Spring Cloud Service. Possible values are `loadBalancer` and `userDefinedRouting`. Defaults to `loadBalancer`. Changing this forces a new resource to be created.
  /// [readTimeoutSeconds] Ingress read time out in seconds.
  /// [serviceRuntimeNetworkResourceGroup] Specifies the Name of the resource group containing network resources of Azure Spring Cloud Service Runtime. Changing this forces a new resource to be created.
  /// [serviceRuntimeSubnetId] Specifies the ID of the Subnet where the Service Runtime components of the Spring Cloud Service will exist. Changing this forces a new resource to be created.
  const SpringCloudServiceNetwork({
    this.appNetworkResourceGroup,
    required this.appSubnetId,
    required this.cidrRanges,
    this.outboundType,
    this.readTimeoutSeconds,
    this.serviceRuntimeNetworkResourceGroup,
    required this.serviceRuntimeSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appNetworkResourceGroup': ?appNetworkResourceGroup,
      'appSubnetId': appSubnetId,
      'cidrRanges': cidrRanges,
      'outboundType': ?outboundType,
      'readTimeoutSeconds': ?readTimeoutSeconds,
      'serviceRuntimeNetworkResourceGroup': ?serviceRuntimeNetworkResourceGroup,
      'serviceRuntimeSubnetId': serviceRuntimeSubnetId,
    };
  }

  factory SpringCloudServiceNetwork.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceNetwork(
      appNetworkResourceGroup: (() { final guardedValue = map['appNetworkResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSubnetId: pulumi.Input.fromValue(map['appSubnetId'] as String),
      cidrRanges: pulumi.Input.fromValue((map['cidrRanges'] as List).cast<String>()),
      outboundType: (() { final guardedValue = map['outboundType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readTimeoutSeconds: (() { final guardedValue = map['readTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serviceRuntimeNetworkResourceGroup: (() { final guardedValue = map['serviceRuntimeNetworkResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRuntimeSubnetId: pulumi.Input.fromValue(map['serviceRuntimeSubnetId'] as String),
    );
  }
}

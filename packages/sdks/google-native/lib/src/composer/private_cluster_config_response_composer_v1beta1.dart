// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the private GKE cluster in a Cloud Composer environment.
class PrivateClusterConfigResponseComposerV1beta1 {
  /// Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  final pulumi.Input<bool> enablePrivateEndpoint;
  /// Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  final pulumi.Input<String> masterIpv4CidrBlock;
  /// The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network.
  final pulumi.Input<String> masterIpv4ReservedRange;

  /// Creates a new [PrivateClusterConfigResponseComposerV1beta1].
  /// [enablePrivateEndpoint] Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  /// [masterIpv4CidrBlock] Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  /// [masterIpv4ReservedRange] The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network.
  PrivateClusterConfigResponseComposerV1beta1({
    required this.enablePrivateEndpoint,
    required this.masterIpv4CidrBlock,
    required this.masterIpv4ReservedRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateEndpoint': enablePrivateEndpoint,
      'masterIpv4CidrBlock': masterIpv4CidrBlock,
      'masterIpv4ReservedRange': masterIpv4ReservedRange,
    };
  }

  factory PrivateClusterConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfigResponseComposerV1beta1(
      enablePrivateEndpoint: (map['enablePrivateEndpoint'] as bool).input(),
      masterIpv4CidrBlock: (map['masterIpv4CidrBlock'] as String).input(),
      masterIpv4ReservedRange: (map['masterIpv4ReservedRange'] as String).input(),
    );
  }
}


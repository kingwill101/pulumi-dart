// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the private GKE cluster in a Cloud Composer environment.
class PrivateClusterConfig {
  /// Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  final pulumi.Input<bool>? enablePrivateEndpoint;
  /// Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  final pulumi.Input<String>? masterIpv4CidrBlock;

  /// Creates a new [PrivateClusterConfig].
  /// [enablePrivateEndpoint] Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  /// [masterIpv4CidrBlock] Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  const PrivateClusterConfig({
    this.enablePrivateEndpoint,
    this.masterIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
    };
  }

  factory PrivateClusterConfig.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfig(
      enablePrivateEndpoint: (() { final guardedValue = map['enablePrivateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      masterIpv4CidrBlock: (() { final guardedValue = map['masterIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


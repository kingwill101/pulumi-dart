// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentFrontendPrivate {
  /// Specify the method for allocating the private IP. Possible values are `Static` and `Dynamic`.
  final pulumi.Input<String> allocationMethod;
  /// Specify the private IP Address.
  final pulumi.Input<String> ipAddress;
  /// Specify the Subnet Resource ID for this NGINX Deployment.
  final pulumi.Input<String> subnetId;

  /// Creates a new [DeploymentFrontendPrivate].
  /// [allocationMethod] Specify the method for allocating the private IP. Possible values are `Static` and `Dynamic`.
  /// [ipAddress] Specify the private IP Address.
  /// [subnetId] Specify the Subnet Resource ID for this NGINX Deployment.
  const DeploymentFrontendPrivate({
    required this.allocationMethod,
    required this.ipAddress,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': allocationMethod,
      'ipAddress': ipAddress,
      'subnetId': subnetId,
    };
  }

  factory DeploymentFrontendPrivate.fromMap(Map<String, dynamic> map) {
    return DeploymentFrontendPrivate(
      allocationMethod: pulumi.Input.fromValue(map['allocationMethod'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

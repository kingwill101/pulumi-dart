// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentFrontendPrivate {
  /// The method of allocating the private IP to the NGINX Deployment.
  final pulumi.Input<String> allocationMethod;
  /// The list of Public IP Resource IDs for this NGINX Deployment.
  final pulumi.Input<String> ipAddress;
  /// The subnet resource ID of the NGINX Deployment.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetDeploymentFrontendPrivate].
  /// [allocationMethod] The method of allocating the private IP to the NGINX Deployment.
  /// [ipAddress] The list of Public IP Resource IDs for this NGINX Deployment.
  /// [subnetId] The subnet resource ID of the NGINX Deployment.
  const GetDeploymentFrontendPrivate({
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

  factory GetDeploymentFrontendPrivate.fromMap(Map<String, dynamic> map) {
    return GetDeploymentFrontendPrivate(
      allocationMethod: pulumi.Input.fromValue(map['allocationMethod'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

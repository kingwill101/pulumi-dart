// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentNetworkInterface {
  /// Specify The Subnet Resource ID for this NGINX Deployment.
  final pulumi.Input<String> subnetId;

  /// Creates a new [DeploymentNetworkInterface].
  /// [subnetId] Specify The Subnet Resource ID for this NGINX Deployment.
  DeploymentNetworkInterface({required this.subnetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnetId': subnetId};
  }

  factory DeploymentNetworkInterface.fromMap(Map<String, dynamic> map) {
    return DeploymentNetworkInterface(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

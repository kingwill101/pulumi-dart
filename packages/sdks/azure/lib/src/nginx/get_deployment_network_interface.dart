// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentNetworkInterface {
  /// The subnet resource ID of the NGINX Deployment.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetDeploymentNetworkInterface].
  /// [subnetId] The subnet resource ID of the NGINX Deployment.
  GetDeploymentNetworkInterface({required this.subnetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnetId': subnetId};
  }

  factory GetDeploymentNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetDeploymentNetworkInterface(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentFrontendPublic {
  /// The list of Public IP Resource IDs for this NGINX Deployment.
  final pulumi.Input<List<String>> ipAddresses;

  /// Creates a new [GetDeploymentFrontendPublic].
  /// [ipAddresses] The list of Public IP Resource IDs for this NGINX Deployment.
  GetDeploymentFrontendPublic({
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ipAddresses,
    };
  }

  factory GetDeploymentFrontendPublic.fromMap(Map<String, dynamic> map) {
    return GetDeploymentFrontendPublic(
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
    );
  }
}


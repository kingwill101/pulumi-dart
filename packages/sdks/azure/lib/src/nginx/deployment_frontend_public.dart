// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentFrontendPublic {
  /// Specifies a list of Public IP Resource ID to this NGINX Deployment.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [DeploymentFrontendPublic].
  /// [ipAddresses] Specifies a list of Public IP Resource ID to this NGINX Deployment.
  const DeploymentFrontendPublic({
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ?ipAddresses,
    };
  }

  factory DeploymentFrontendPublic.fromMap(Map<String, dynamic> map) {
    return DeploymentFrontendPublic(
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

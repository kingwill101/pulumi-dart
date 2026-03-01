// ignore_for_file: unused_element, unnecessary_cast


class DeploymentFrontendPublic {
  /// Specifies a list of Public IP Resource ID to this NGINX Deployment.
  final List<String>? ipAddresses;

  /// Creates a new [DeploymentFrontendPublic].
  /// [ipAddresses] Specifies a list of Public IP Resource ID to this NGINX Deployment.
  DeploymentFrontendPublic({
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ?ipAddresses,
    };
  }

  factory DeploymentFrontendPublic.fromMap(Map<String, dynamic> map) {
    return DeploymentFrontendPublic(
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
    );
  }
}


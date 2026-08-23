// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Account used as a credential.
class ServiceAccountResponseDeploymentmanagerV2beta {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final pulumi.Input<String> email;

  /// Creates a new [ServiceAccountResponseDeploymentmanagerV2beta].
  /// [email] The IAM service account email address like test@myproject.iam.gserviceaccount.com
  const ServiceAccountResponseDeploymentmanagerV2beta({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ServiceAccountResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponseDeploymentmanagerV2beta(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

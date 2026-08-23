// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAccount represents a GCP service account.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccountResponse {
  /// Email address of the service account.
  final pulumi.Input<String> email;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccountResponse].
  /// [email] Email address of the service account.
  const GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccountResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccountResponse(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

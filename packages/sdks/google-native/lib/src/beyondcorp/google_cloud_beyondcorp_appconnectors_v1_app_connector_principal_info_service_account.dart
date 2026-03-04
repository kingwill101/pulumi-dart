// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAccount represents a GCP service account.
class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount {
  /// Email address of the service account.
  final pulumi.Input<String>? email;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount].
  /// [email] Email address of the service account.
  GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount({
    this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': ?email};
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount(
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

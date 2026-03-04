// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceServiceAccount {
  /// The service account e-mail address.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final pulumi.Input<String>? email;

  /// A list of service scopes. Both OAuth2 URLs and gcloud
  /// short names are supported. To allow full access to all Cloud APIs, use the
  /// `cloud-platform` scope. See a complete list of scopes [here](https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes).
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [InstanceServiceAccount].
  /// [email] The service account e-mail address.
  /// [scopes] A list of service scopes. Both OAuth2 URLs and gcloud
  InstanceServiceAccount({this.email, required this.scopes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': ?email, 'scopes': scopes};
  }

  factory InstanceServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceServiceAccount(
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}

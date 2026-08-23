// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateServiceAccount {
  /// The service account e-mail address. If not given, the
  /// default Google Compute Engine service account is used.
  final pulumi.Input<String> email;
  /// A list of service scopes. Both OAuth2 URLs and gcloud
  /// short names are supported. To allow full access to all Cloud APIs, use the
  /// `cloud-platform` scope. See a complete list of scopes [here](https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes).
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [GetRegionInstanceTemplateServiceAccount].
  /// [email] The service account e-mail address. If not given, the
  /// [scopes] A list of service scopes. Both OAuth2 URLs and gcloud
  const GetRegionInstanceTemplateServiceAccount({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scopes': scopes,
    };
  }

  factory GetRegionInstanceTemplateServiceAccount.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateServiceAccount(
      email: pulumi.Input.fromValue(map['email'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}

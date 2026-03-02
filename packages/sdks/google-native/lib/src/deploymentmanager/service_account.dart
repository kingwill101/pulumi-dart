// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Account used as a credential.
class ServiceAccount {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final pulumi.Input<String>? email;

  /// Creates a new [ServiceAccount].
  /// [email] The IAM service account email address like test@myproject.iam.gserviceaccount.com
  ServiceAccount({
    this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
    };
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: map['email'] == null ? null : (map['email'] as String).input(),
    );
  }
}


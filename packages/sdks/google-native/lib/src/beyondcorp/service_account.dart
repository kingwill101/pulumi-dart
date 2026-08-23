// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAccount represents a GCP service account.
class ServiceAccount {
  /// Email address of the service account.
  final pulumi.Input<String>? email;

  /// Creates a new [ServiceAccount].
  /// [email] Email address of the service account.
  const ServiceAccount({
    this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
    };
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

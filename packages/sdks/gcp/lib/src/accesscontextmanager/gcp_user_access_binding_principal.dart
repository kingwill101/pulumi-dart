// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpUserAccessBindingPrincipal {
  /// Immutable. Service account email used to assign policies to a single service account.
  /// If a service account is subject to multiple policies (e.g., if there is a policy for all
  /// service accounts in a project and a policy for the service account), the closest (i.e.
  /// the most specific) dry-run policy will be used for the dry-run functionality and the
  /// closest policy will be used for the enforcement.
  final pulumi.Input<String?>? serviceAccount;
  /// Immutable. Cloud project number used to assign policies to all service accounts owned by the project.
  final pulumi.Input<String?>? serviceAccountProjectNumber;

  /// Creates a new [GcpUserAccessBindingPrincipal].
  /// [serviceAccount] Immutable. Service account email used to assign policies to a single service account.
  /// [serviceAccountProjectNumber] Immutable. Cloud project number used to assign policies to all service accounts owned by the project.
  const GcpUserAccessBindingPrincipal({
    this.serviceAccount,
    this.serviceAccountProjectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?serviceAccount,
      'serviceAccountProjectNumber': ?serviceAccountProjectNumber,
    };
  }

  factory GcpUserAccessBindingPrincipal.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingPrincipal(
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountProjectNumber: (() { final guardedValue = map['serviceAccountProjectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

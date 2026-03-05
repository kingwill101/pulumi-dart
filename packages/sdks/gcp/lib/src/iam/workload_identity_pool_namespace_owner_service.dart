// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityPoolNamespaceOwnerService {
  /// (Output)
  /// The service agent principal subject, e.g.
  /// `serviceAccount:service-1234@gcp-sa-gkehub.iam.gserviceaccount.com`.
  final pulumi.Input<String>? principalSubject;

  /// Creates a new [WorkloadIdentityPoolNamespaceOwnerService].
  /// [principalSubject] (Output)
  WorkloadIdentityPoolNamespaceOwnerService({
    this.principalSubject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalSubject': ?principalSubject,
    };
  }

  factory WorkloadIdentityPoolNamespaceOwnerService.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolNamespaceOwnerService(
      principalSubject: (() { final guardedValue = map['principalSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


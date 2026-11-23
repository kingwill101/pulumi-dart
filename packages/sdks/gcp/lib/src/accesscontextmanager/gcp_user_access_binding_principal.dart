// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpUserAccessBindingPrincipal {
  /// Immutable. The IAM principal identifier of the federated workforce or workload to
  /// assign the policy to. Examples include the following:
  /// * Single principal:
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`
  /// * All workloads in a workload identity pool:
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/*`
  /// * All Workforce Pools in a Google Cloud organization:
  /// `principalSet://cloudresourcemanager.googleapis.com/organizations/{organization_id}/type/WorkforcePool`
  /// Bindings created for all Workforce Pools in a Google Cloud organization
  /// support only `scopedAccessSettings` with the `restrictedProject`
  /// client scope and active `sessionSettings`. No other configurations are
  /// allowed.
  final pulumi.Input<String?>? federatedPrincipal;
  /// Immutable. Service account email used to assign policies to a single service account.
  /// If a service account is subject to multiple policies (e.g., if there is a policy for all
  /// service accounts in a project and a policy for the service account), the closest (i.e.
  /// the most specific) dry-run policy will be used for the dry-run functionality and the
  /// closest policy will be used for the enforcement.
  final pulumi.Input<String?>? serviceAccount;
  /// Immutable. Cloud project number used to assign policies to all service accounts owned by the project.
  final pulumi.Input<String?>? serviceAccountProjectNumber;

  /// Creates a new [GcpUserAccessBindingPrincipal].
  /// [federatedPrincipal] Immutable. The IAM principal identifier of the federated workforce or workload to
  /// [serviceAccount] Immutable. Service account email used to assign policies to a single service account.
  /// [serviceAccountProjectNumber] Immutable. Cloud project number used to assign policies to all service accounts owned by the project.
  const GcpUserAccessBindingPrincipal({
    this.federatedPrincipal,
    this.serviceAccount,
    this.serviceAccountProjectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedPrincipal': ?federatedPrincipal,
      'serviceAccount': ?serviceAccount,
      'serviceAccountProjectNumber': ?serviceAccountProjectNumber,
    };
  }

  factory GcpUserAccessBindingPrincipal.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingPrincipal(
      federatedPrincipal: (() { final guardedValue = map['federatedPrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountProjectNumber: (() { final guardedValue = map['serviceAccountProjectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

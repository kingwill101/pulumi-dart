// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedflowDeployment resources.
class SharedflowDeploymentState {
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String?>? deletionPolicy;
  /// The resource ID of the environment.
  final pulumi.Input<String?>? environment;
  /// The Apigee Organization associated with the Sharedflow
  final pulumi.Input<String?>? orgId;
  /// Revision of the Sharedflow to be deployed.
  final pulumi.Input<String?>? revision;
  /// The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  final pulumi.Input<String?>? serviceAccount;
  /// Id of the Sharedflow to be deployed.
  final pulumi.Input<String?>? sharedflowId;

  /// Creates a new [SharedflowDeploymentState].
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [environment] The resource ID of the environment.
  /// [orgId] The Apigee Organization associated with the Sharedflow
  /// [revision] Revision of the Sharedflow to be deployed.
  /// [serviceAccount] The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  /// [sharedflowId] Id of the Sharedflow to be deployed.
  const SharedflowDeploymentState({
    this.deletionPolicy,
    this.environment,
    this.orgId,
    this.revision,
    this.serviceAccount,
    this.sharedflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'environment': ?environment,
      'orgId': ?orgId,
      'revision': ?revision,
      'serviceAccount': ?serviceAccount,
      'sharedflowId': ?sharedflowId,
    };
  }

  factory SharedflowDeploymentState.fromMap(Map<String, dynamic> map) {
    return SharedflowDeploymentState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedflowId: (() { final guardedValue = map['sharedflowId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

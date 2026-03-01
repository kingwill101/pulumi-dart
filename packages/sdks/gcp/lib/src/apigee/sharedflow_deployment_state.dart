// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedflowDeployment resources.
class SharedflowDeploymentState {
  /// The resource ID of the environment.
  final pulumi.Input<String>? environment;
  /// The Apigee Organization associated with the Sharedflow
  final pulumi.Input<String>? orgId;
  /// Revision of the Sharedflow to be deployed.
  ///
  ///
  /// - - -
  final pulumi.Input<String>? revision;
  /// The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  final pulumi.Input<String>? serviceAccount;
  /// Id of the Sharedflow to be deployed.
  final pulumi.Input<String>? sharedflowId;

  /// Creates a new [SharedflowDeploymentState].
  /// [environment] The resource ID of the environment.
  /// [orgId] The Apigee Organization associated with the Sharedflow
  /// [revision] Revision of the Sharedflow to be deployed.
  /// [serviceAccount] The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  /// [sharedflowId] Id of the Sharedflow to be deployed.
  SharedflowDeploymentState({
    pulumi.Output<String>? environment,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? revision,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? sharedflowId,
  }) :
      environment = pulumi.Input.asOptionalInput<String>(environment),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      revision = pulumi.Input.asOptionalInput<String>(revision),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      sharedflowId = pulumi.Input.asOptionalInput<String>(sharedflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'orgId': ?orgId,
      'revision': ?revision,
      'serviceAccount': ?serviceAccount,
      'sharedflowId': ?sharedflowId,
    };
  }

  factory SharedflowDeploymentState.fromMap(Map<String, dynamic> map) {
    return SharedflowDeploymentState(
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<String>(map['revision'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      sharedflowId: map['sharedflowId'] == null ? null : pulumi.Output.create<String>(map['sharedflowId'] as String),
    );
  }
}


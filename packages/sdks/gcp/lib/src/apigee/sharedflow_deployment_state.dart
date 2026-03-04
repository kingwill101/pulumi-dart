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
    this.environment,
    this.orgId,
    this.revision,
    this.serviceAccount,
    this.sharedflowId,
  });

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
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgId: (() {
        final guardedValue = map['orgId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      revision: (() {
        final guardedValue = map['revision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedflowId: (() {
        final guardedValue = map['sharedflowId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

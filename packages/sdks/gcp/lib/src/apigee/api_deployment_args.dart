// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_api_deployment_api_deployment_args_doc}
/// The set of arguments for ApiDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_api_deployment_api_deployment_args_doc}
class ApiDeploymentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The Apigee Environment associated with the Apigee API deployment.
  final pulumi.Input<String> environment;
  /// The Apigee Organization associated with the Apigee API deployment.
  final pulumi.Input<String> orgId;
  /// The Apigee API associated with the Apigee API deployment.
  final pulumi.Input<String> proxyId;
  /// The revision of the API proxy to be deployed.
  final pulumi.Input<String> revision;
  /// The Google Cloud IAM service account to use as the identity for the deployed proxy. The format must be `{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [ApiDeploymentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [environment] The Apigee Environment associated with the Apigee API deployment.
  /// [orgId] The Apigee Organization associated with the Apigee API deployment.
  /// [proxyId] The Apigee API associated with the Apigee API deployment.
  /// [revision] The revision of the API proxy to be deployed.
  /// [serviceAccount] The Google Cloud IAM service account to use as the identity for the deployed proxy. The format must be `{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`.
  const ApiDeploymentArgs({
    this.deletionPolicy,
    required this.environment,
    required this.orgId,
    required this.proxyId,
    required this.revision,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'environment': environment,
      'orgId': orgId,
      'proxyId': proxyId,
      'revision': revision,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory ApiDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      proxyId: pulumi.Input.fromValue(map['proxyId'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

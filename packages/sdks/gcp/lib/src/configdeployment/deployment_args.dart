// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_terraform_blueprint.dart';

/// {@template pulumi_configdeployment_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_configdeployment_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Optional. Arbitrary key-value metadata storage.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Location for Cloud Build logs and artifacts.
  final pulumi.Input<String?>? artifactsGcsBucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// If true, deletes the deployment and its nested resources.
  final pulumi.Input<bool?>? forceDestroy;
  /// If true, attempts to automatically import resources on 409 conflict.
  final pulumi.Input<bool?>? importExistingResources;
  /// Optional. User-defined metadata for the deployment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The user-specified ID of the deployment.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Controls quota checks.
  /// Possible values are: `ENABLED`, `ENFORCED`.
  final pulumi.Input<String?>? quotaValidation;
  /// Required. User-specified Service Account (SA) credentials to be used when actuating resources.
  final pulumi.Input<String> serviceAccount;
  /// A bundle of HCL files in a GCS bucket or Git repo.
  /// Structure is documented below.
  final pulumi.Input<DeploymentTerraformBlueprint> terraformBlueprint;
  /// Optional constraint on the Terraform version.
  final pulumi.Input<String?>? tfVersionConstraint;
  /// Custom Cloud Build worker pool resource name.
  final pulumi.Input<String?>? workerPool;

  /// Creates a new [DeploymentArgs].
  /// [annotations] Optional. Arbitrary key-value metadata storage.
  /// [artifactsGcsBucket] Location for Cloud Build logs and artifacts.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [forceDestroy] If true, deletes the deployment and its nested resources.
  /// [importExistingResources] If true, attempts to automatically import resources on 409 conflict.
  /// [labels] Optional. User-defined metadata for the deployment.
  /// [location] The location for the resource
  /// [name] The user-specified ID of the deployment.
  /// [project] The ID of the project in which the resource belongs.
  /// [quotaValidation] Controls quota checks.
  /// [serviceAccount] Required. User-specified Service Account (SA) credentials to be used when actuating resources.
  /// [terraformBlueprint] A bundle of HCL files in a GCS bucket or Git repo.
  /// [tfVersionConstraint] Optional constraint on the Terraform version.
  /// [workerPool] Custom Cloud Build worker pool resource name.
  const DeploymentArgs({
    this.annotations,
    this.artifactsGcsBucket,
    this.deletionPolicy,
    this.forceDestroy,
    this.importExistingResources,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.quotaValidation,
    required this.serviceAccount,
    required this.terraformBlueprint,
    this.tfVersionConstraint,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'artifactsGcsBucket': ?artifactsGcsBucket,
      'deletionPolicy': ?deletionPolicy,
      'forceDestroy': ?forceDestroy,
      'importExistingResources': ?importExistingResources,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'quotaValidation': ?quotaValidation,
      'serviceAccount': serviceAccount,
      'terraformBlueprint': pulumi.Input.mapInputValue<DeploymentTerraformBlueprint, Map<String, dynamic>>(terraformBlueprint, (value) => value.toMap()),
      'tfVersionConstraint': ?tfVersionConstraint,
      'workerPool': ?workerPool,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      artifactsGcsBucket: (() { final guardedValue = map['artifactsGcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      importExistingResources: (() { final guardedValue = map['importExistingResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaValidation: (() { final guardedValue = map['quotaValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      terraformBlueprint: pulumi.Input.fromValue(DeploymentTerraformBlueprint.fromMap((map['terraformBlueprint']! as Map).cast<String, dynamic>())),
      tfVersionConstraint: (() { final guardedValue = map['tfVersionConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

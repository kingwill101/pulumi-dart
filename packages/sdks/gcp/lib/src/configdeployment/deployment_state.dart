// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_terraform_blueprint.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
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
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// If true, deletes the deployment and its nested resources.
  final pulumi.Input<bool?>? forceDestroy;
  /// If true, attempts to automatically import resources on 409 conflict.
  final pulumi.Input<bool?>? importExistingResources;
  /// Optional. User-defined metadata for the deployment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Output only. Revision name most recently applied.
  final pulumi.Input<String?>? latestRevision;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// The user-specified ID of the deployment.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Controls quota checks.
  /// Possible values are: `ENABLED`, `ENFORCED`.
  final pulumi.Input<String?>? quotaValidation;
  /// Required. User-specified Service Account (SA) credentials to be used when actuating resources.
  final pulumi.Input<String?>? serviceAccount;
  /// Output only. Current state of the deployment.
  final pulumi.Input<String?>? state;
  /// A bundle of HCL files in a GCS bucket or Git repo.
  /// Structure is documented below.
  final pulumi.Input<DeploymentTerraformBlueprint?>? terraformBlueprint;
  /// Optional constraint on the Terraform version.
  final pulumi.Input<String?>? tfVersionConstraint;
  /// Custom Cloud Build worker pool resource name.
  final pulumi.Input<String?>? workerPool;

  /// Creates a new [DeploymentState].
  /// [annotations] Optional. Arbitrary key-value metadata storage.
  /// [artifactsGcsBucket] Location for Cloud Build logs and artifacts.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDestroy] If true, deletes the deployment and its nested resources.
  /// [importExistingResources] If true, attempts to automatically import resources on 409 conflict.
  /// [labels] Optional. User-defined metadata for the deployment.
  /// [latestRevision] Output only. Revision name most recently applied.
  /// [location] The location for the resource
  /// [name] The user-specified ID of the deployment.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [quotaValidation] Controls quota checks.
  /// [serviceAccount] Required. User-specified Service Account (SA) credentials to be used when actuating resources.
  /// [state] Output only. Current state of the deployment.
  /// [terraformBlueprint] A bundle of HCL files in a GCS bucket or Git repo.
  /// [tfVersionConstraint] Optional constraint on the Terraform version.
  /// [workerPool] Custom Cloud Build worker pool resource name.
  const DeploymentState({
    this.annotations,
    this.artifactsGcsBucket,
    this.deletionPolicy,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.forceDestroy,
    this.importExistingResources,
    this.labels,
    this.latestRevision,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.quotaValidation,
    this.serviceAccount,
    this.state,
    this.terraformBlueprint,
    this.tfVersionConstraint,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'artifactsGcsBucket': ?artifactsGcsBucket,
      'deletionPolicy': ?deletionPolicy,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'importExistingResources': ?importExistingResources,
      'labels': ?labels,
      'latestRevision': ?latestRevision,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'quotaValidation': ?quotaValidation,
      'serviceAccount': ?serviceAccount,
      'state': ?state,
      'terraformBlueprint': ?pulumi.Input.mapOptionalInputValue<DeploymentTerraformBlueprint, Map<String, dynamic>>(terraformBlueprint, (value) => value.toMap()),
      'tfVersionConstraint': ?tfVersionConstraint,
      'workerPool': ?workerPool,
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      artifactsGcsBucket: (() { final guardedValue = map['artifactsGcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      importExistingResources: (() { final guardedValue = map['importExistingResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      quotaValidation: (() { final guardedValue = map['quotaValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terraformBlueprint: (() { final guardedValue = map['terraformBlueprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentTerraformBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tfVersionConstraint: (() { final guardedValue = map['tfVersionConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

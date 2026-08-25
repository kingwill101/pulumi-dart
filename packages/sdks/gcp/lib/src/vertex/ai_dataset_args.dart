// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_dataset_encryption_spec.dart';

/// {@template pulumi_vertex_ai_dataset_ai_dataset_args_doc}
/// The set of arguments for AiDataset.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_dataset_ai_dataset_args_doc}
class AiDatasetArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiDatasetEncryptionSpec?>? encryptionSpec;
  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  final pulumi.Input<String> metadataSchemaUri;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the dataset. eg us-central1
  final pulumi.Input<String?>? region;

  /// Creates a new [AiDatasetArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  /// [labels] A set of key/value label pairs to assign to this Workflow.
  /// [metadataSchemaUri] Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the dataset. eg us-central1
  const AiDatasetArgs({
    this.deletionPolicy,
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    required this.metadataSchemaUri,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiDatasetEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'metadataSchemaUri': metadataSchemaUri,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiDatasetArgs.fromMap(Map<String, dynamic> map) {
    return AiDatasetArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiDatasetEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadataSchemaUri: pulumi.Input.fromValue(map['metadataSchemaUri'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

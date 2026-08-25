// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_tensorboard_encryption_spec.dart';

/// {@template pulumi_vertex_ai_tensorboard_ai_tensorboard_args_doc}
/// The set of arguments for AiTensorboard.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_tensorboard_ai_tensorboard_args_doc}
class AiTensorboardArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of this Tensorboard.
  final pulumi.Input<String?>? description;
  /// User provided name of this Tensorboard.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiTensorboardEncryptionSpec?>? encryptionSpec;
  /// The labels with user-defined metadata to organize your Tensorboards.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the tensorboard. eg us-central1
  final pulumi.Input<String?>? region;

  /// Creates a new [AiTensorboardArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this Tensorboard.
  /// [displayName] User provided name of this Tensorboard.
  /// [encryptionSpec] Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize your Tensorboards.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tensorboard. eg us-central1
  const AiTensorboardArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiTensorboardEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiTensorboardArgs.fromMap(Map<String, dynamic> map) {
    return AiTensorboardArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTensorboardEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

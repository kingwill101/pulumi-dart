// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_type_label_entry_deploymentmanager_v2beta.dart';
import 'template_contents_deploymentmanager_v2beta.dart';

/// {@template pulumi_deploymentmanager_v2beta_composite_type_deploymentmanager_v2beta_args_doc}
/// The set of arguments for CompositeType.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2beta_composite_type_deploymentmanager_v2beta_args_doc}
class CompositeTypeDeploymentmanagerV2betaArgs {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? id;
  /// Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final pulumi.Input<List<CompositeTypeLabelEntryDeploymentmanagerV2beta>>? labels;
  /// Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Files for the template type.
  final pulumi.Input<TemplateContentsDeploymentmanagerV2beta>? templateContents;

  /// Creates a new [CompositeTypeDeploymentmanagerV2betaArgs].
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [id] Optional.
  /// [labels] Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  /// [name] Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  /// [project] Optional.
  /// [templateContents] Files for the template type.
  const CompositeTypeDeploymentmanagerV2betaArgs({
    this.description,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.templateContents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<CompositeTypeLabelEntryDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<CompositeTypeLabelEntryDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'templateContents': ?pulumi.Input.mapOptionalInputValue<TemplateContentsDeploymentmanagerV2beta, Map<String, dynamic>>(templateContents, (value) => value.toMap()),
    };
  }

  factory CompositeTypeDeploymentmanagerV2betaArgs.fromMap(Map<String, dynamic> map) {
    return CompositeTypeDeploymentmanagerV2betaArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompositeTypeLabelEntryDeploymentmanagerV2beta>(guardedValue, (value) => CompositeTypeLabelEntryDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateContents: (() { final guardedValue = map['templateContents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateContentsDeploymentmanagerV2beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


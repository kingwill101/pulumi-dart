// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_template_artifact.dart';

/// {@template pulumi_resources_template_spec_version_args_doc}
/// The set of arguments for TemplateSpecVersion.
/// {@endtemplate}
/// {@macro pulumi_resources_template_spec_version_args_doc}
class TemplateSpecVersionArgs {
  /// Template Spec version description.
  final pulumi.Input<String>? description;
  /// An array of linked template artifacts.
  final pulumi.Input<List<LinkedTemplateArtifact>>? linkedTemplates;
  /// The location of the Template Spec Version. It must match the location of the parent Template Spec.
  final pulumi.Input<String>? location;
  /// The main Azure Resource Manager template content.
  final pulumi.Input<dynamic>? mainTemplate;
  /// The version metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the Template Spec.
  final pulumi.Input<String> templateSpecName;
  /// The version of the Template Spec.
  final pulumi.Input<String>? templateSpecVersion;
  /// The Azure Resource Manager template UI definition content.
  final pulumi.Input<dynamic>? uiFormDefinition;

  /// Creates a new [TemplateSpecVersionArgs].
  /// [description] Template Spec version description.
  /// [linkedTemplates] An array of linked template artifacts.
  /// [location] The location of the Template Spec Version. It must match the location of the parent Template Spec.
  /// [mainTemplate] The main Azure Resource Manager template content.
  /// [metadata] The version metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [templateSpecName] Name of the Template Spec.
  /// [templateSpecVersion] The version of the Template Spec.
  /// [uiFormDefinition] The Azure Resource Manager template UI definition content.
  const TemplateSpecVersionArgs({
    this.description,
    this.linkedTemplates,
    this.location,
    this.mainTemplate,
    this.metadata,
    required this.resourceGroupName,
    this.tags,
    required this.templateSpecName,
    this.templateSpecVersion,
    this.uiFormDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'linkedTemplates': ?pulumi.Input.mapOptionalInputValue<List<LinkedTemplateArtifact>, List<Map<String, dynamic>>>(linkedTemplates, (value) => pulumi.Input.encodeList<LinkedTemplateArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'mainTemplate': ?mainTemplate,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'templateSpecName': templateSpecName,
      'templateSpecVersion': ?templateSpecVersion,
      'uiFormDefinition': ?uiFormDefinition,
    };
  }

  factory TemplateSpecVersionArgs.fromMap(Map<String, dynamic> map) {
    return TemplateSpecVersionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedTemplates: (() { final guardedValue = map['linkedTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedTemplateArtifact>(guardedValue, (value) => LinkedTemplateArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mainTemplate: (() { final guardedValue = map['mainTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateSpecName: pulumi.Input.fromValue(map['templateSpecName'] as String),
      templateSpecVersion: (() { final guardedValue = map['templateSpecVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiFormDefinition: (() { final guardedValue = map['uiFormDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

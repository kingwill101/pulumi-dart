// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config.dart';
import 'template_template_metadata.dart';

/// {@template pulumi_modelarmor_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_modelarmor_template_template_args_doc}
class TemplateArgs {
  /// Filters configuration.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfig> filterConfig;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// template_id from the method_signature of Create RPC
  final pulumi.Input<String> templateId;
  /// Message describing TemplateMetadata
  /// Structure is documented below.
  final pulumi.Input<TemplateTemplateMetadata>? templateMetadata;

  /// Creates a new [TemplateArgs].
  /// [filterConfig] Filters configuration.
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [templateId] Id of the requesting object
  /// [templateMetadata] Message describing TemplateMetadata
  TemplateArgs({
    required pulumi.Output<TemplateFilterConfig> filterConfig,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> templateId,
    pulumi.Output<TemplateTemplateMetadata>? templateMetadata,
  }) :
      filterConfig = pulumi.Input.asInput<TemplateFilterConfig>(filterConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      templateId = pulumi.Input.asInput<String>(templateId),
      templateMetadata = pulumi.Input.asOptionalInput<TemplateTemplateMetadata>(templateMetadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterConfig': pulumi.Input.mapInputValue<TemplateFilterConfig, Map<String, dynamic>>(filterConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'templateId': templateId,
      'templateMetadata': ?pulumi.Input.mapOptionalInputValue<TemplateTemplateMetadata, Map<String, dynamic>>(templateMetadata, (value) => value.toMap()),
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      filterConfig: pulumi.Output.create<TemplateFilterConfig>(TemplateFilterConfig.fromMap((map['filterConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      templateId: pulumi.Output.create<String>(map['templateId'] as String),
      templateMetadata: map['templateMetadata'] == null ? null : pulumi.Output.create<TemplateTemplateMetadata>(TemplateTemplateMetadata.fromMap((map['templateMetadata'] as Map).cast<String, dynamic>())),
    );
  }
}


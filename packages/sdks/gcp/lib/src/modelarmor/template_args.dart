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
    required this.filterConfig,
    this.labels,
    required this.location,
    this.project,
    required this.templateId,
    this.templateMetadata,
  });

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
      filterConfig: (TemplateFilterConfig.fromMap((map['filterConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      templateId: (map['templateId'] as String).input(),
      templateMetadata: map['templateMetadata'] == null ? null : (TemplateTemplateMetadata.fromMap((map['templateMetadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


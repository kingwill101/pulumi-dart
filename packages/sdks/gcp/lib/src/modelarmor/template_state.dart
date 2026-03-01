// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config.dart';
import 'template_template_metadata.dart';

/// Input properties used for looking up and filtering Template resources.
class TemplateState {
  /// Create time stamp
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Filters configuration.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfig>? filterConfig;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. name of resource
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// template_id from the method_signature of Create RPC
  final pulumi.Input<String>? templateId;
  /// Message describing TemplateMetadata
  /// Structure is documented below.
  final pulumi.Input<TemplateTemplateMetadata>? templateMetadata;
  /// Update time stamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TemplateState].
  /// [createTime] Create time stamp
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [filterConfig] Filters configuration.
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. name of resource
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [templateId] Id of the requesting object
  /// [templateMetadata] Message describing TemplateMetadata
  /// [updateTime] Update time stamp
  TemplateState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<TemplateFilterConfig>? filterConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? templateId,
    pulumi.Output<TemplateTemplateMetadata>? templateMetadata,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      filterConfig = pulumi.Input.asOptionalInput<TemplateFilterConfig>(filterConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      templateMetadata = pulumi.Input.asOptionalInput<TemplateTemplateMetadata>(templateMetadata),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'filterConfig': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfig, Map<String, dynamic>>(filterConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'templateId': ?templateId,
      'templateMetadata': ?pulumi.Input.mapOptionalInputValue<TemplateTemplateMetadata, Map<String, dynamic>>(templateMetadata, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory TemplateState.fromMap(Map<String, dynamic> map) {
    return TemplateState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      filterConfig: map['filterConfig'] == null ? null : pulumi.Output.create<TemplateFilterConfig>(TemplateFilterConfig.fromMap((map['filterConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      templateMetadata: map['templateMetadata'] == null ? null : pulumi.Output.create<TemplateTemplateMetadata>(TemplateTemplateMetadata.fromMap((map['templateMetadata'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


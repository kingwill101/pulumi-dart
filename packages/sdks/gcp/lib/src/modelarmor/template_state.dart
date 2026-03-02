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
    this.createTime,
    this.effectiveLabels,
    this.filterConfig,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.templateId,
    this.templateMetadata,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      filterConfig: map['filterConfig'] == null ? null : (TemplateFilterConfig.fromMap((map['filterConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
      templateMetadata: map['templateMetadata'] == null ? null : (TemplateTemplateMetadata.fromMap((map['templateMetadata']! as Map).cast<String, dynamic>())).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}


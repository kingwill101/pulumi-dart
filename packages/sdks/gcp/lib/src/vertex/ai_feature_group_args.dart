// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_group_big_query.dart';

/// {@template pulumi_vertex_ai_feature_group_ai_feature_group_args_doc}
/// The set of arguments for AiFeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_group_ai_feature_group_args_doc}
class AiFeatureGroupArgs {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureGroupBigQuery>? bigQuery;
  /// The description of the FeatureGroup.
  final pulumi.Input<String>? description;
  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name of the Feature Group.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of feature group. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiFeatureGroupArgs].
  /// [bigQuery] Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source.
  /// [description] The description of the FeatureGroup.
  /// [labels] The labels with user-defined metadata to organize your FeatureGroup.
  /// [name] The resource name of the Feature Group.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of feature group. eg us-central1
  const AiFeatureGroupArgs({
    this.bigQuery,
    this.description,
    this.labels,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuery': ?pulumi.Input.mapOptionalInputValue<AiFeatureGroupBigQuery, Map<String, dynamic>>(bigQuery, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiFeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupArgs(
      bigQuery: (() { final guardedValue = map['bigQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureGroupBigQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


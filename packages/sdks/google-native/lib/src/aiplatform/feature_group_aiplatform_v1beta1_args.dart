// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_group_big_query.dart';

/// {@template pulumi_aiplatform_v1beta1_feature_group_aiplatform_v1beta1_args_doc}
/// The set of arguments for FeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_feature_group_aiplatform_v1beta1_args_doc}
class FeatureGroupAiplatformV1beta1Args {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureGroupBigQuery>?
  bigQuery;

  /// Optional. Description of the FeatureGroup.
  final pulumi.Input<String>? description;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// Required. The ID to use for this FeatureGroup, which will become the final component of the FeatureGroup's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final pulumi.Input<String> featureGroupId;

  /// Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [FeatureGroupAiplatformV1beta1Args].
  /// [bigQuery] Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  /// [description] Optional. Description of the FeatureGroup.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureGroupId] Required. The ID to use for this FeatureGroup, which will become the final component of the FeatureGroup's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [project] Optional.
  FeatureGroupAiplatformV1beta1Args({
    this.bigQuery,
    this.description,
    this.etag,
    required this.featureGroupId,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuery':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1FeatureGroupBigQuery,
            Map<String, dynamic>
          >(bigQuery, (value) => value.toMap()),
      'description': ?description,
      'etag': ?etag,
      'featureGroupId': featureGroupId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory FeatureGroupAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FeatureGroupAiplatformV1beta1Args(
      bigQuery: (() {
        final guardedValue = map['bigQuery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1FeatureGroupBigQuery.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      featureGroupId: pulumi.Input.fromValue(map['featureGroupId'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

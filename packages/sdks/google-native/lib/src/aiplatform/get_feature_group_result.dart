// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_feature_group_big_query_response.dart';

/// Result data returned by getFeatureGroup.
class GetFeatureGroupResult {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  final GoogleCloudAiplatformV1FeatureGroupBigQueryResponse? bigQuery;
  /// Timestamp when this FeatureGroup was created.
  final String? createTime;
  /// Optional. Description of the FeatureGroup.
  final String? description;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String>? labels;
  /// Name of the FeatureGroup. Format: `projects/{project}/locations/{location}/featureGroups/{featureGroup}`
  final String? name;
  /// Timestamp when this FeatureGroup was last updated.
  final String? updateTime;

  /// Creates a new [GetFeatureGroupResult].
  /// [bigQuery] Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  /// [createTime] Timestamp when this FeatureGroup was created.
  /// [description] Optional. Description of the FeatureGroup.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] Name of the FeatureGroup. Format: `projects/{project}/locations/{location}/featureGroups/{featureGroup}`
  /// [updateTime] Timestamp when this FeatureGroup was last updated.
  const GetFeatureGroupResult({
    this.bigQuery,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuery': ?bigQuery?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetFeatureGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupResult(
      bigQuery: (() { final guardedValue = map['bigQuery']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1FeatureGroupBigQueryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

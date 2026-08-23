// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExperiment.
class GetExperimentResult {
  /// Timestamp when this TensorboardExperiment was created.
  final String createTime;
  /// Description of this TensorboardExperiment.
  final String description;
  /// User provided name of this TensorboardExperiment.
  final String displayName;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;
  /// The labels with user-defined metadata to organize your TensorboardExperiment. Label keys and values cannot be longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `aiplatform.googleapis.com/` and are immutable. The following system labels exist for each Dataset: * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its value is the metadata_schema's title.
  final Map<String, String> labels;
  /// Name of the TensorboardExperiment. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}`
  final String name;
  /// Immutable. Source of the TensorboardExperiment. Example: a custom training job.
  final String source;
  /// Timestamp when this TensorboardExperiment was last updated.
  final String updateTime;

  /// Creates a new [GetExperimentResult].
  /// [createTime] Timestamp when this TensorboardExperiment was created.
  /// [description] Description of this TensorboardExperiment.
  /// [displayName] User provided name of this TensorboardExperiment.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your TensorboardExperiment. Label keys and values cannot be longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `aiplatform.googleapis.com/` and are immutable. The following system labels exist for each Dataset: * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its value is the metadata_schema's title.
  /// [name] Name of the TensorboardExperiment. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}`
  /// [source] Immutable. Source of the TensorboardExperiment. Example: a custom training job.
  /// [updateTime] Timestamp when this TensorboardExperiment was last updated.
  const GetExperimentResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.name,
    required this.source,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'etag': etag,
      'labels': labels,
      'name': name,
      'source': source,
      'updateTime': updateTime,
    };
  }

  factory GetExperimentResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      source: map['source'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

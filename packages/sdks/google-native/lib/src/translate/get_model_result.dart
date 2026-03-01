// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getModel.
class GetModelResult {
  /// Timestamp when the model resource was created, which is also when the training started.
  final String createTime;
  /// The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final String dataset;
  /// The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final String displayName;
  /// The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`
  final String name;
  /// The BCP-47 language code of the source language.
  final String sourceLanguageCode;
  /// The BCP-47 language code of the target language.
  final String targetLanguageCode;
  /// Number of examples (sentence pairs) used to test the model.
  final int testExampleCount;
  /// Number of examples (sentence pairs) used to train the model.
  final int trainExampleCount;
  /// Timestamp when this model was last updated.
  final String updateTime;
  /// Number of examples (sentence pairs) used to validate the model.
  final int validateExampleCount;

  /// Creates a new [GetModelResult].
  /// [createTime] Timestamp when the model resource was created, which is also when the training started.
  /// [dataset] The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  /// [displayName] The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  /// [name] The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`
  /// [sourceLanguageCode] The BCP-47 language code of the source language.
  /// [targetLanguageCode] The BCP-47 language code of the target language.
  /// [testExampleCount] Number of examples (sentence pairs) used to test the model.
  /// [trainExampleCount] Number of examples (sentence pairs) used to train the model.
  /// [updateTime] Timestamp when this model was last updated.
  /// [validateExampleCount] Number of examples (sentence pairs) used to validate the model.
  GetModelResult({
    required this.createTime,
    required this.dataset,
    required this.displayName,
    required this.name,
    required this.sourceLanguageCode,
    required this.targetLanguageCode,
    required this.testExampleCount,
    required this.trainExampleCount,
    required this.updateTime,
    required this.validateExampleCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataset': dataset,
      'displayName': displayName,
      'name': name,
      'sourceLanguageCode': sourceLanguageCode,
      'targetLanguageCode': targetLanguageCode,
      'testExampleCount': testExampleCount,
      'trainExampleCount': trainExampleCount,
      'updateTime': updateTime,
      'validateExampleCount': validateExampleCount,
    };
  }

  factory GetModelResult.fromMap(Map<String, dynamic> map) {
    return GetModelResult(
      createTime: map['createTime'] as String,
      dataset: map['dataset'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      sourceLanguageCode: map['sourceLanguageCode'] as String,
      targetLanguageCode: map['targetLanguageCode'] as String,
      testExampleCount: map['testExampleCount'] as int,
      trainExampleCount: map['trainExampleCount'] as int,
      updateTime: map['updateTime'] as String,
      validateExampleCount: map['validateExampleCount'] as int,
    );
  }
}


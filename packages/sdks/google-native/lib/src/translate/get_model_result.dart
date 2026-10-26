// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getModel.
class GetModelResult {
  /// Timestamp when the model resource was created, which is also when the training started.
  final String? createTime;
  /// The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final String? dataset;
  /// The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final String? displayName;
  /// The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`
  final String? name;
  /// The BCP-47 language code of the source language.
  final String? sourceLanguageCode;
  /// The BCP-47 language code of the target language.
  final String? targetLanguageCode;
  /// Number of examples (sentence pairs) used to test the model.
  final int? testExampleCount;
  /// Number of examples (sentence pairs) used to train the model.
  final int? trainExampleCount;
  /// Timestamp when this model was last updated.
  final String? updateTime;
  /// Number of examples (sentence pairs) used to validate the model.
  final int? validateExampleCount;

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
  const GetModelResult({
    this.createTime,
    this.dataset,
    this.displayName,
    this.name,
    this.sourceLanguageCode,
    this.targetLanguageCode,
    this.testExampleCount,
    this.trainExampleCount,
    this.updateTime,
    this.validateExampleCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataset': ?dataset,
      'displayName': ?displayName,
      'name': ?name,
      'sourceLanguageCode': ?sourceLanguageCode,
      'targetLanguageCode': ?targetLanguageCode,
      'testExampleCount': ?testExampleCount,
      'trainExampleCount': ?trainExampleCount,
      'updateTime': ?updateTime,
      'validateExampleCount': ?validateExampleCount,
    };
  }

  factory GetModelResult.fromMap(Map<String, dynamic> map) {
    return GetModelResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceLanguageCode: (() { final guardedValue = map['sourceLanguageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetLanguageCode: (() { final guardedValue = map['targetLanguageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testExampleCount: (() { final guardedValue = map['testExampleCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      trainExampleCount: (() { final guardedValue = map['trainExampleCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validateExampleCount: (() { final guardedValue = map['validateExampleCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}

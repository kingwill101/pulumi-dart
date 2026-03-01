// ignore_for_file: unused_element, unnecessary_cast


class DeploymentModel {
  /// The format of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible values of `format` can be found by running the command `az cognitiveservices account list-models`. The available values may vary by region or due to quota limitations. These could include models from `AI21 Labs`, `Black Forest Labs`, `Cohere`, `Core42`, `DeepSeek`, `Meta`, `Microsoft`, `Mistral AI`, `OpenAI`, and `xAI`.
  final String format;
  /// The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  final String name;
  /// The version of Cognitive Services Account Deployment model. If `version` is not specified, the default version of the model at the time will be assigned.
  final String? version;

  /// Creates a new [DeploymentModel].
  /// [format] The format of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  /// [name] The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  /// [version] The version of Cognitive Services Account Deployment model. If `version` is not specified, the default version of the model at the time will be assigned.
  DeploymentModel({
    required this.format,
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'name': name,
      'version': ?version,
    };
  }

  factory DeploymentModel.fromMap(Map<String, dynamic> map) {
    return DeploymentModel(
      format: map['format'] as String,
      name: map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}


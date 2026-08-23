// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentModel {
  /// The format of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Possible values of `format` can be found by running the command `az cognitiveservices account list-models`. The available values may vary by region or due to quota limitations. These could include models from `AI21 Labs`, `Black Forest Labs`, `Cohere`, `Core42`, `DeepSeek`, `Meta`, `Microsoft`, `Mistral AI`, `OpenAI`, and `xAI`.
  final pulumi.Input<String> format;
  /// The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// The version of Cognitive Services Account Deployment model. If `version` is not specified, the default version of the model at the time will be assigned.
  final pulumi.Input<String>? version;

  /// Creates a new [DeploymentModel].
  /// [format] The format of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  /// [name] The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
  /// [version] The version of Cognitive Services Account Deployment model. If `version` is not specified, the default version of the model at the time will be assigned.
  const DeploymentModel({
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
      format: pulumi.Input.fromValue(map['format'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

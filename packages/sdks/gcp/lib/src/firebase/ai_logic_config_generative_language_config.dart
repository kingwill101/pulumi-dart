// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiLogicConfigGenerativeLanguageConfig {
  /// The value of the API key. The API key must have
  /// 'generativelanguage.googleapis.com' in its "API restrictions" allowlist.
  /// Note that this API is sometimes called the *Generative Language API* in
  /// the Google Cloud console.
  ///
  /// Do **not** add this Gemini API key into your app's codebase
  final pulumi.Input<String>? apiKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The value of the API key. The API key must have
  /// 'generativelanguage.googleapis.com' in its "API restrictions" allowlist.
  /// Note that this API is sometimes called the *Generative Language API* in
  /// the Google Cloud console.
  ///
  /// Do **not** add this Gemini API key into your app's codebase
  final pulumi.Input<String>? apiKeyWo;
  /// Triggers update of 'api_key_wo' write-only. Increment this value when an update to 'api_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String>? apiKeyWoVersion;

  /// Creates a new [AiLogicConfigGenerativeLanguageConfig].
  /// [apiKey] The value of the API key. The API key must have
  /// [apiKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [apiKeyWoVersion] Triggers update of 'api_key_wo' write-only. Increment this value when an update to 'api_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  const AiLogicConfigGenerativeLanguageConfig({
    this.apiKey,
    this.apiKeyWo,
    this.apiKeyWoVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiKeyWo': ?apiKeyWo,
      'apiKeyWoVersion': ?apiKeyWoVersion,
    };
  }

  factory AiLogicConfigGenerativeLanguageConfig.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigGenerativeLanguageConfig(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyWo: (() { final guardedValue = map['apiKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyWoVersion: (() { final guardedValue = map['apiKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


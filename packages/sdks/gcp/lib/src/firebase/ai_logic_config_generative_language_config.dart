// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiLogicConfigGenerativeLanguageConfig {
  /// (Optional, Deprecated)
  /// The value of the API key. Firebase AI Logic no longer requires API key
  /// material; values provided here may be silently ignored on input.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// &gt; **Warning:** `generative_language_config.api_key` is deprecated and will be removed in a future major release. Firebase AI Logic now uses a Google-managed service account to authenticate requests to the Gemini Developer API and no longer requires an API key.
  final pulumi.Input<String?>? apiKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The value of the API key. Firebase AI Logic no longer requires API key
  /// material; values provided here may be silently ignored on input.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `apiKey` or `apiKeyWo` can only be set.
  final pulumi.Input<String?>? apiKeyWo;
  /// Triggers update of `apiKeyWo` write-only. Increment this value when an update to `apiKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? apiKeyWoVersion;

  /// Creates a new [AiLogicConfigGenerativeLanguageConfig].
  /// [apiKey] (Optional, Deprecated)
  /// [apiKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [apiKeyWoVersion] Triggers update of `apiKeyWo` write-only. Increment this value when an update to `apiKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
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

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppLanguageSettings {
  /// The default language code of the app.
  final pulumi.Input<String>? defaultLanguageCode;
  /// Enables multilingual support. If true, agents in the app will use pre-built
  /// instructions to improve handling of multilingual input.
  final pulumi.Input<bool>? enableMultilingualSupport;
  /// The action to perform when an agent receives input in an unsupported
  /// language.
  /// This can be a predefined action or a custom tool call.
  /// Valid values are:
  /// - A tool's full resource name, which triggers a specific tool execution.
  /// - A predefined system action, such as "escalate" or "exit", which triggers
  /// an EndSession signal with corresponding metadata
  /// to terminate the conversation.
  final pulumi.Input<String>? fallbackAction;
  /// List of languages codes supported by the app, in addition to the
  /// `default_language_code`.
  final pulumi.Input<List<String>>? supportedLanguageCodes;

  /// Creates a new [AppLanguageSettings].
  /// [defaultLanguageCode] The default language code of the app.
  /// [enableMultilingualSupport] Enables multilingual support. If true, agents in the app will use pre-built
  /// [fallbackAction] The action to perform when an agent receives input in an unsupported
  /// [supportedLanguageCodes] List of languages codes supported by the app, in addition to the
  AppLanguageSettings({
    this.defaultLanguageCode,
    this.enableMultilingualSupport,
    this.fallbackAction,
    this.supportedLanguageCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLanguageCode': ?defaultLanguageCode,
      'enableMultilingualSupport': ?enableMultilingualSupport,
      'fallbackAction': ?fallbackAction,
      'supportedLanguageCodes': ?supportedLanguageCodes,
    };
  }

  factory AppLanguageSettings.fromMap(Map<String, dynamic> map) {
    return AppLanguageSettings(
      defaultLanguageCode: map['defaultLanguageCode'] == null ? null : (map['defaultLanguageCode'] as String).input(),
      enableMultilingualSupport: map['enableMultilingualSupport'] == null ? null : (map['enableMultilingualSupport'] as bool).input(),
      fallbackAction: map['fallbackAction'] == null ? null : (map['fallbackAction'] as String).input(),
      supportedLanguageCodes: map['supportedLanguageCodes'] == null ? null : ((map['supportedLanguageCodes'] as List).cast<String>()).input(),
    );
  }
}


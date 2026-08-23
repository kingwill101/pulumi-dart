// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WidgetConfigAccessSettings {
  /// Whether public unauthenticated access is allowed.
  final pulumi.Input<bool>? allowPublicAccess;
  /// List of domains that are allowed to integrate the search widget.
  final pulumi.Input<List<String>>? allowlistedDomains;
  /// Whether web app access is enabled.
  final pulumi.Input<bool>? enableWebApp;
  /// Language code for user interface. Use language tags defined by
  /// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). If unset, the
  /// default language code is "en-US".
  final pulumi.Input<String>? languageCode;
  /// The workforce identity pool provider used to access the widget.
  final pulumi.Input<String>? workforceIdentityPoolProvider;

  /// Creates a new [WidgetConfigAccessSettings].
  /// [allowPublicAccess] Whether public unauthenticated access is allowed.
  /// [allowlistedDomains] List of domains that are allowed to integrate the search widget.
  /// [enableWebApp] Whether web app access is enabled.
  /// [languageCode] Language code for user interface. Use language tags defined by
  /// [workforceIdentityPoolProvider] The workforce identity pool provider used to access the widget.
  const WidgetConfigAccessSettings({
    this.allowPublicAccess,
    this.allowlistedDomains,
    this.enableWebApp,
    this.languageCode,
    this.workforceIdentityPoolProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPublicAccess': ?allowPublicAccess,
      'allowlistedDomains': ?allowlistedDomains,
      'enableWebApp': ?enableWebApp,
      'languageCode': ?languageCode,
      'workforceIdentityPoolProvider': ?workforceIdentityPoolProvider,
    };
  }

  factory WidgetConfigAccessSettings.fromMap(Map<String, dynamic> map) {
    return WidgetConfigAccessSettings(
      allowPublicAccess: (() { final guardedValue = map['allowPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowlistedDomains: (() { final guardedValue = map['allowlistedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableWebApp: (() { final guardedValue = map['enableWebApp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforceIdentityPoolProvider: (() { final guardedValue = map['workforceIdentityPoolProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

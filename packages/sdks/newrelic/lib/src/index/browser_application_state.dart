// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BrowserApplication resources.
class BrowserApplicationState {
  /// The account ID of the New Relic account you wish to create the browser application in. Defaults to the value of the environment variable `NEW_RELIC_ACCOUNT_ID` if not specified.
  final pulumi.Input<String>? accountId;
  /// The application ID of the browser application (not to be confused with GUID).
  final pulumi.Input<String>? applicationId;
  /// Configures cookies. Defaults to `true`, if not specified.
  final pulumi.Input<bool>? cookiesEnabled;
  /// Configures distributed tracing in browser apps. Defaults to `true`, if not specified.
  final pulumi.Input<bool>? distributedTracingEnabled;
  /// The GUID of the browser application.
  final pulumi.Input<String>? guid;
  /// The JavaScript configuration of the browser application, encoded into a string.
  final pulumi.Input<String>? jsConfig;
  /// Determines the browser loader configured. Valid values are `SPA`, `PRO`, and `LITE`. The default is `SPA`. Refer to the [browser agent loader documentation](https://docs.newrelic.com/docs/browser/browser-monitoring/installation/install-browser-monitoring-agent/#agent-types) for more information on valid loader types.
  final pulumi.Input<String>? loaderType;
  /// The name of the browser application.
  final pulumi.Input<String>? name;

  /// Creates a new [BrowserApplicationState].
  /// [accountId] The account ID of the New Relic account you wish to create the browser application in. Defaults to the value of the environment variable `NEW_RELIC_ACCOUNT_ID` if not specified.
  /// [applicationId] The application ID of the browser application (not to be confused with GUID).
  /// [cookiesEnabled] Configures cookies. Defaults to `true`, if not specified.
  /// [distributedTracingEnabled] Configures distributed tracing in browser apps. Defaults to `true`, if not specified.
  /// [guid] The GUID of the browser application.
  /// [jsConfig] The JavaScript configuration of the browser application, encoded into a string.
  /// [loaderType] Determines the browser loader configured. Valid values are `SPA`, `PRO`, and `LITE`. The default is `SPA`. Refer to the [browser agent loader documentation](https://docs.newrelic.com/docs/browser/browser-monitoring/installation/install-browser-monitoring-agent/#agent-types) for more information on valid loader types.
  /// [name] The name of the browser application.
  const BrowserApplicationState({
    this.accountId,
    this.applicationId,
    this.cookiesEnabled,
    this.distributedTracingEnabled,
    this.guid,
    this.jsConfig,
    this.loaderType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'applicationId': ?applicationId,
      'cookiesEnabled': ?cookiesEnabled,
      'distributedTracingEnabled': ?distributedTracingEnabled,
      'guid': ?guid,
      'jsConfig': ?jsConfig,
      'loaderType': ?loaderType,
      'name': ?name,
    };
  }

  factory BrowserApplicationState.fromMap(Map<String, dynamic> map) {
    return BrowserApplicationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookiesEnabled: (() { final guardedValue = map['cookiesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      distributedTracingEnabled: (() { final guardedValue = map['distributedTracingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jsConfig: (() { final guardedValue = map['jsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaderType: (() { final guardedValue = map['loaderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


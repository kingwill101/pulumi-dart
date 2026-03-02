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
  BrowserApplicationState({
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
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      cookiesEnabled: map['cookiesEnabled'] == null ? null : (map['cookiesEnabled'] as bool).input(),
      distributedTracingEnabled: map['distributedTracingEnabled'] == null ? null : (map['distributedTracingEnabled'] as bool).input(),
      guid: map['guid'] == null ? null : (map['guid'] as String).input(),
      jsConfig: map['jsConfig'] == null ? null : (map['jsConfig'] as String).input(),
      loaderType: map['loaderType'] == null ? null : (map['loaderType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? applicationId,
    pulumi.Output<bool>? cookiesEnabled,
    pulumi.Output<bool>? distributedTracingEnabled,
    pulumi.Output<String>? guid,
    pulumi.Output<String>? jsConfig,
    pulumi.Output<String>? loaderType,
    pulumi.Output<String>? name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      cookiesEnabled = pulumi.Input.asOptionalInput<bool>(cookiesEnabled),
      distributedTracingEnabled = pulumi.Input.asOptionalInput<bool>(distributedTracingEnabled),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      jsConfig = pulumi.Input.asOptionalInput<String>(jsConfig),
      loaderType = pulumi.Input.asOptionalInput<String>(loaderType),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      cookiesEnabled: map['cookiesEnabled'] == null ? null : pulumi.Output.create<bool>(map['cookiesEnabled'] as bool),
      distributedTracingEnabled: map['distributedTracingEnabled'] == null ? null : pulumi.Output.create<bool>(map['distributedTracingEnabled'] as bool),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      jsConfig: map['jsConfig'] == null ? null : pulumi.Output.create<String>(map['jsConfig'] as String),
      loaderType: map['loaderType'] == null ? null : pulumi.Output.create<String>(map['loaderType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_browser_application_browser_application_args_doc}
/// The set of arguments for BrowserApplication.
/// {@endtemplate}
/// {@macro pulumi_index_browser_application_browser_application_args_doc}
class BrowserApplicationArgs {
  /// The account ID of the New Relic account you wish to create the browser application in. Defaults to the value of the environment variable `NEW_RELIC_ACCOUNT_ID` if not specified.
  final pulumi.Input<String>? accountId;
  /// Configures cookies. Defaults to `true`, if not specified.
  final pulumi.Input<bool>? cookiesEnabled;
  /// Configures distributed tracing in browser apps. Defaults to `true`, if not specified.
  final pulumi.Input<bool>? distributedTracingEnabled;
  /// Determines the browser loader configured. Valid values are `SPA`, `PRO`, and `LITE`. The default is `SPA`. Refer to the [browser agent loader documentation](https://docs.newrelic.com/docs/browser/browser-monitoring/installation/install-browser-monitoring-agent/#agent-types) for more information on valid loader types.
  final pulumi.Input<String>? loaderType;
  /// The name of the browser application.
  final pulumi.Input<String>? name;

  /// Creates a new [BrowserApplicationArgs].
  /// [accountId] The account ID of the New Relic account you wish to create the browser application in. Defaults to the value of the environment variable `NEW_RELIC_ACCOUNT_ID` if not specified.
  /// [cookiesEnabled] Configures cookies. Defaults to `true`, if not specified.
  /// [distributedTracingEnabled] Configures distributed tracing in browser apps. Defaults to `true`, if not specified.
  /// [loaderType] Determines the browser loader configured. Valid values are `SPA`, `PRO`, and `LITE`. The default is `SPA`. Refer to the [browser agent loader documentation](https://docs.newrelic.com/docs/browser/browser-monitoring/installation/install-browser-monitoring-agent/#agent-types) for more information on valid loader types.
  /// [name] The name of the browser application.
  BrowserApplicationArgs({
    this.accountId,
    this.cookiesEnabled,
    this.distributedTracingEnabled,
    this.loaderType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cookiesEnabled': ?cookiesEnabled,
      'distributedTracingEnabled': ?distributedTracingEnabled,
      'loaderType': ?loaderType,
      'name': ?name,
    };
  }

  factory BrowserApplicationArgs.fromMap(Map<String, dynamic> map) {
    return BrowserApplicationArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      cookiesEnabled: map['cookiesEnabled'] == null ? null : (map['cookiesEnabled'] as bool).input(),
      distributedTracingEnabled: map['distributedTracingEnabled'] == null ? null : (map['distributedTracingEnabled'] as bool).input(),
      loaderType: map['loaderType'] == null ? null : (map['loaderType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


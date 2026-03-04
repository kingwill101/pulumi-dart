// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_monitor_sso_configuration_monitor_sso_configuration_args_doc}
/// The set of arguments for MonitorSsoConfiguration.
/// {@endtemplate}
/// {@macro pulumi_datadog_monitor_sso_configuration_monitor_sso_configuration_args_doc}
class MonitorSsoConfigurationArgs {
  /// The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created.
  final pulumi.Input<String> datadogMonitorId;

  /// The application Id to perform SSO operation.
  final pulumi.Input<String> enterpriseApplicationId;

  /// The name of the SingleSignOn configuration. Defaults to `default`.
  final pulumi.Input<String>? name;

  /// The state of SingleSignOn configuration. Possible values are `Enable`, `Disable`, `Initial` and `Existing`.
  final pulumi.Input<String>? singleSignOn;
  final pulumi.Input<String>? singleSignOnEnabled;

  /// Creates a new [MonitorSsoConfigurationArgs].
  /// [datadogMonitorId] The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created.
  /// [enterpriseApplicationId] The application Id to perform SSO operation.
  /// [name] The name of the SingleSignOn configuration. Defaults to `default`.
  /// [singleSignOn] The state of SingleSignOn configuration. Possible values are `Enable`, `Disable`, `Initial` and `Existing`.
  /// [singleSignOnEnabled] Optional.
  MonitorSsoConfigurationArgs({
    required this.datadogMonitorId,
    required this.enterpriseApplicationId,
    this.name,
    this.singleSignOn,
    this.singleSignOnEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadogMonitorId': datadogMonitorId,
      'enterpriseApplicationId': enterpriseApplicationId,
      'name': ?name,
      'singleSignOn': ?singleSignOn,
      'singleSignOnEnabled': ?singleSignOnEnabled,
    };
  }

  factory MonitorSsoConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return MonitorSsoConfigurationArgs(
      datadogMonitorId: pulumi.Input.fromValue(
        map['datadogMonitorId'] as String,
      ),
      enterpriseApplicationId: pulumi.Input.fromValue(
        map['enterpriseApplicationId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      singleSignOn: (() {
        final guardedValue = map['singleSignOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      singleSignOnEnabled: (() {
        final guardedValue = map['singleSignOnEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

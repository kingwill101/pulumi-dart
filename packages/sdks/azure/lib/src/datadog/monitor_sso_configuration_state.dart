// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MonitorSsoConfiguration resources.
class MonitorSsoConfigurationState {
  /// The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created.
  final pulumi.Input<String>? datadogMonitorId;
  /// The application Id to perform SSO operation.
  final pulumi.Input<String>? enterpriseApplicationId;
  /// The SingleSignOn URL to login to Datadog org.
  final pulumi.Input<String>? loginUrl;
  /// The name of the SingleSignOn configuration. Defaults to `default`.
  final pulumi.Input<String>? name;
  /// The state of SingleSignOn configuration. Possible values are `Enable`, `Disable`, `Initial` and `Existing`.
  final pulumi.Input<String>? singleSignOn;
  final pulumi.Input<String>? singleSignOnEnabled;

  /// Creates a new [MonitorSsoConfigurationState].
  /// [datadogMonitorId] The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created.
  /// [enterpriseApplicationId] The application Id to perform SSO operation.
  /// [loginUrl] The SingleSignOn URL to login to Datadog org.
  /// [name] The name of the SingleSignOn configuration. Defaults to `default`.
  /// [singleSignOn] The state of SingleSignOn configuration. Possible values are `Enable`, `Disable`, `Initial` and `Existing`.
  /// [singleSignOnEnabled] Optional.
  MonitorSsoConfigurationState({
    this.datadogMonitorId,
    this.enterpriseApplicationId,
    this.loginUrl,
    this.name,
    this.singleSignOn,
    this.singleSignOnEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadogMonitorId': ?datadogMonitorId,
      'enterpriseApplicationId': ?enterpriseApplicationId,
      'loginUrl': ?loginUrl,
      'name': ?name,
      'singleSignOn': ?singleSignOn,
      'singleSignOnEnabled': ?singleSignOnEnabled,
    };
  }

  factory MonitorSsoConfigurationState.fromMap(Map<String, dynamic> map) {
    return MonitorSsoConfigurationState(
      datadogMonitorId: (() { final guardedValue = map['datadogMonitorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enterpriseApplicationId: (() { final guardedValue = map['enterpriseApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginUrl: (() { final guardedValue = map['loginUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSignOn: (() { final guardedValue = map['singleSignOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSignOnEnabled: (() { final guardedValue = map['singleSignOnEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


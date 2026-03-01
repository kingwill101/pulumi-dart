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
    pulumi.Output<String>? datadogMonitorId,
    pulumi.Output<String>? enterpriseApplicationId,
    pulumi.Output<String>? loginUrl,
    pulumi.Output<String>? name,
    pulumi.Output<String>? singleSignOn,
    pulumi.Output<String>? singleSignOnEnabled,
  }) :
      datadogMonitorId = pulumi.Input.asOptionalInput<String>(datadogMonitorId),
      enterpriseApplicationId = pulumi.Input.asOptionalInput<String>(enterpriseApplicationId),
      loginUrl = pulumi.Input.asOptionalInput<String>(loginUrl),
      name = pulumi.Input.asOptionalInput<String>(name),
      singleSignOn = pulumi.Input.asOptionalInput<String>(singleSignOn),
      singleSignOnEnabled = pulumi.Input.asOptionalInput<String>(singleSignOnEnabled);

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
      datadogMonitorId: map['datadogMonitorId'] == null ? null : pulumi.Output.create<String>(map['datadogMonitorId'] as String),
      enterpriseApplicationId: map['enterpriseApplicationId'] == null ? null : pulumi.Output.create<String>(map['enterpriseApplicationId'] as String),
      loginUrl: map['loginUrl'] == null ? null : pulumi.Output.create<String>(map['loginUrl'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      singleSignOn: map['singleSignOn'] == null ? null : pulumi.Output.create<String>(map['singleSignOn'] as String),
      singleSignOnEnabled: map['singleSignOnEnabled'] == null ? null : pulumi.Output.create<String>(map['singleSignOnEnabled'] as String),
    );
  }
}


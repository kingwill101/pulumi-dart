// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudNewRelicApplicationPerformanceMonitoring resources.
class SpringCloudNewRelicApplicationPerformanceMonitoringState {
  /// Specifies whether enable the agent. Defaults to `true`.
  final pulumi.Input<bool>? agentEnabled;
  /// Specifies the application name used to report data to New Relic.
  final pulumi.Input<String>? appName;
  /// Specifies the port number to differentiate JVMs for the same app on the same machine.
  final pulumi.Input<int>? appServerPort;
  /// Specifies whether enable plain text logging of all data sent to New Relic to the agent logfile. Defaults to `false`.
  final pulumi.Input<bool>? auditModeEnabled;
  /// Specifies whether enable the reporting of data separately for each web app. Defaults to `false`.
  final pulumi.Input<bool>? autoAppNamingEnabled;
  /// Specifies whether enable the component-based transaction naming. Defaults to `true`.
  final pulumi.Input<bool>? autoTransactionNamingEnabled;
  /// Specifies whether enable all instrumentation using an `@Trace` annotation. Disabling this causes `@Trace` annotations to be ignored. Defaults to `true`.
  final pulumi.Input<bool>? customTracingEnabled;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// Specifies a mapping of labels to be added to the New Relic application.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specifies the license key associated with the New Relic account. This key binds your agent's data to your account in New Relic service.
  final pulumi.Input<String>? licenseKey;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for New Relic. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudServiceId;

  /// Creates a new [SpringCloudNewRelicApplicationPerformanceMonitoringState].
  /// [agentEnabled] Specifies whether enable the agent. Defaults to `true`.
  /// [appName] Specifies the application name used to report data to New Relic.
  /// [appServerPort] Specifies the port number to differentiate JVMs for the same app on the same machine.
  /// [auditModeEnabled] Specifies whether enable plain text logging of all data sent to New Relic to the agent logfile. Defaults to `false`.
  /// [autoAppNamingEnabled] Specifies whether enable the reporting of data separately for each web app. Defaults to `false`.
  /// [autoTransactionNamingEnabled] Specifies whether enable the component-based transaction naming. Defaults to `true`.
  /// [customTracingEnabled] Specifies whether enable all instrumentation using an `@Trace` annotation. Disabling this causes `@Trace` annotations to be ignored. Defaults to `true`.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [labels] Specifies a mapping of labels to be added to the New Relic application.
  /// [licenseKey] Specifies the license key associated with the New Relic account. This key binds your agent's data to your account in New Relic service.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for New Relic. Changing this forces a new resource to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  SpringCloudNewRelicApplicationPerformanceMonitoringState({
    pulumi.Output<bool>? agentEnabled,
    pulumi.Output<String>? appName,
    pulumi.Output<int>? appServerPort,
    pulumi.Output<bool>? auditModeEnabled,
    pulumi.Output<bool>? autoAppNamingEnabled,
    pulumi.Output<bool>? autoTransactionNamingEnabled,
    pulumi.Output<bool>? customTracingEnabled,
    pulumi.Output<bool>? globallyEnabled,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? licenseKey,
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudServiceId,
  }) :
      agentEnabled = pulumi.Input.asOptionalInput<bool>(agentEnabled),
      appName = pulumi.Input.asOptionalInput<String>(appName),
      appServerPort = pulumi.Input.asOptionalInput<int>(appServerPort),
      auditModeEnabled = pulumi.Input.asOptionalInput<bool>(auditModeEnabled),
      autoAppNamingEnabled = pulumi.Input.asOptionalInput<bool>(autoAppNamingEnabled),
      autoTransactionNamingEnabled = pulumi.Input.asOptionalInput<bool>(autoTransactionNamingEnabled),
      customTracingEnabled = pulumi.Input.asOptionalInput<bool>(customTracingEnabled),
      globallyEnabled = pulumi.Input.asOptionalInput<bool>(globallyEnabled),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      licenseKey = pulumi.Input.asOptionalInput<String>(licenseKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asOptionalInput<String>(springCloudServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentEnabled': ?agentEnabled,
      'appName': ?appName,
      'appServerPort': ?appServerPort,
      'auditModeEnabled': ?auditModeEnabled,
      'autoAppNamingEnabled': ?autoAppNamingEnabled,
      'autoTransactionNamingEnabled': ?autoTransactionNamingEnabled,
      'customTracingEnabled': ?customTracingEnabled,
      'globallyEnabled': ?globallyEnabled,
      'labels': ?labels,
      'licenseKey': ?licenseKey,
      'name': ?name,
      'springCloudServiceId': ?springCloudServiceId,
    };
  }

  factory SpringCloudNewRelicApplicationPerformanceMonitoringState.fromMap(Map<String, dynamic> map) {
    return SpringCloudNewRelicApplicationPerformanceMonitoringState(
      agentEnabled: map['agentEnabled'] == null ? null : pulumi.Output.create<bool>(map['agentEnabled'] as bool),
      appName: map['appName'] == null ? null : pulumi.Output.create<String>(map['appName'] as String),
      appServerPort: map['appServerPort'] == null ? null : pulumi.Output.create<int>(map['appServerPort'] as int),
      auditModeEnabled: map['auditModeEnabled'] == null ? null : pulumi.Output.create<bool>(map['auditModeEnabled'] as bool),
      autoAppNamingEnabled: map['autoAppNamingEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoAppNamingEnabled'] as bool),
      autoTransactionNamingEnabled: map['autoTransactionNamingEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoTransactionNamingEnabled'] as bool),
      customTracingEnabled: map['customTracingEnabled'] == null ? null : pulumi.Output.create<bool>(map['customTracingEnabled'] as bool),
      globallyEnabled: map['globallyEnabled'] == null ? null : pulumi.Output.create<bool>(map['globallyEnabled'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      licenseKey: map['licenseKey'] == null ? null : pulumi.Output.create<String>(map['licenseKey'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : pulumi.Output.create<String>(map['springCloudServiceId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_new_relic_application_performance_monitoring_spring_cloud_new_relic_application_performance_monitoring_args_doc}
/// The set of arguments for SpringCloudNewRelicApplicationPerformanceMonitoring.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_new_relic_application_performance_monitoring_spring_cloud_new_relic_application_performance_monitoring_args_doc}
class SpringCloudNewRelicApplicationPerformanceMonitoringArgs {
  /// Specifies whether enable the agent. Defaults to `true`.
  final pulumi.Input<bool>? agentEnabled;
  /// Specifies the application name used to report data to New Relic.
  final pulumi.Input<String> appName;
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
  final pulumi.Input<String> licenseKey;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for New Relic. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudNewRelicApplicationPerformanceMonitoringArgs].
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
  SpringCloudNewRelicApplicationPerformanceMonitoringArgs({
    this.agentEnabled,
    required this.appName,
    this.appServerPort,
    this.auditModeEnabled,
    this.autoAppNamingEnabled,
    this.autoTransactionNamingEnabled,
    this.customTracingEnabled,
    this.globallyEnabled,
    this.labels,
    required this.licenseKey,
    this.name,
    required this.springCloudServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentEnabled': ?agentEnabled,
      'appName': appName,
      'appServerPort': ?appServerPort,
      'auditModeEnabled': ?auditModeEnabled,
      'autoAppNamingEnabled': ?autoAppNamingEnabled,
      'autoTransactionNamingEnabled': ?autoTransactionNamingEnabled,
      'customTracingEnabled': ?customTracingEnabled,
      'globallyEnabled': ?globallyEnabled,
      'labels': ?labels,
      'licenseKey': licenseKey,
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudNewRelicApplicationPerformanceMonitoringArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudNewRelicApplicationPerformanceMonitoringArgs(
      agentEnabled: map['agentEnabled'] == null ? null : (map['agentEnabled'] as bool).input(),
      appName: (map['appName'] as String).input(),
      appServerPort: map['appServerPort'] == null ? null : (map['appServerPort'] as int).input(),
      auditModeEnabled: map['auditModeEnabled'] == null ? null : (map['auditModeEnabled'] as bool).input(),
      autoAppNamingEnabled: map['autoAppNamingEnabled'] == null ? null : (map['autoAppNamingEnabled'] as bool).input(),
      autoTransactionNamingEnabled: map['autoTransactionNamingEnabled'] == null ? null : (map['autoTransactionNamingEnabled'] as bool).input(),
      customTracingEnabled: map['customTracingEnabled'] == null ? null : (map['customTracingEnabled'] as bool).input(),
      globallyEnabled: map['globallyEnabled'] == null ? null : (map['globallyEnabled'] as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      licenseKey: (map['licenseKey'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      springCloudServiceId: (map['springCloudServiceId'] as String).input(),
    );
  }
}


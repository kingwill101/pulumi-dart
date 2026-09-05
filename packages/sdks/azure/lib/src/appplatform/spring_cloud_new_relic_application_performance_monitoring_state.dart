// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudNewRelicApplicationPerformanceMonitoring resources.
class SpringCloudNewRelicApplicationPerformanceMonitoringState {
  /// Specifies whether enable the agent. Defaults to `true`.
  final pulumi.Input<bool?>? agentEnabled;
  /// Specifies the application name used to report data to New Relic.
  final pulumi.Input<String?>? appName;
  /// Specifies the port number to differentiate JVMs for the same app on the same machine.
  final pulumi.Input<int?>? appServerPort;
  /// Specifies whether enable plain text logging of all data sent to New Relic to the agent logfile. Defaults to `false`.
  final pulumi.Input<bool?>? auditModeEnabled;
  /// Specifies whether enable the reporting of data separately for each web app. Defaults to `false`.
  final pulumi.Input<bool?>? autoAppNamingEnabled;
  /// Specifies whether enable the component-based transaction naming. Defaults to `true`.
  final pulumi.Input<bool?>? autoTransactionNamingEnabled;
  /// Specifies whether enable all instrumentation using an `@Trace` annotation. Disabling this causes `@Trace` annotations to be ignored. Defaults to `true`.
  final pulumi.Input<bool?>? customTracingEnabled;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool?>? globallyEnabled;
  /// Specifies a mapping of labels to be added to the New Relic application.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Specifies the license key associated with the New Relic account. This key binds your agent's data to your account in New Relic service.
  final pulumi.Input<String?>? licenseKey;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for New Relic. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? springCloudServiceId;

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
  const SpringCloudNewRelicApplicationPerformanceMonitoringState({
    this.agentEnabled,
    this.appName,
    this.appServerPort,
    this.auditModeEnabled,
    this.autoAppNamingEnabled,
    this.autoTransactionNamingEnabled,
    this.customTracingEnabled,
    this.globallyEnabled,
    this.labels,
    this.licenseKey,
    this.name,
    this.springCloudServiceId,
  });

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
      agentEnabled: (() { final guardedValue = map['agentEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appServerPort: (() { final guardedValue = map['appServerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      auditModeEnabled: (() { final guardedValue = map['auditModeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoAppNamingEnabled: (() { final guardedValue = map['autoAppNamingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoTransactionNamingEnabled: (() { final guardedValue = map['autoTransactionNamingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customTracingEnabled: (() { final guardedValue = map['customTracingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      globallyEnabled: (() { final guardedValue = map['globallyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      licenseKey: (() { final guardedValue = map['licenseKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudServiceId: (() { final guardedValue = map['springCloudServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

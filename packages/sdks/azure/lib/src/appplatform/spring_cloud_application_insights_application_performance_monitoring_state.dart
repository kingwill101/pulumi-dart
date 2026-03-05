// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudApplicationInsightsApplicationPerformanceMonitoring resources.
class SpringCloudApplicationInsightsApplicationPerformanceMonitoringState {
  /// The instrumentation key used to push data to Application Insights.
  final pulumi.Input<String>? connectionString;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the cloud role instance.
  final pulumi.Input<String>? roleInstance;
  /// Specifies the cloud role name used to label the component on the application map.
  final pulumi.Input<String>? roleName;
  /// Specifies the percentage for fixed-percentage sampling.
  final pulumi.Input<int>? samplingPercentage;
  /// Specifies the number of requests per second for the rate-limited sampling.
  final pulumi.Input<int>? samplingRequestsPerSecond;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudServiceId;

  /// Creates a new [SpringCloudApplicationInsightsApplicationPerformanceMonitoringState].
  /// [connectionString] The instrumentation key used to push data to Application Insights.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created.
  /// [roleInstance] Specifies the cloud role instance.
  /// [roleName] Specifies the cloud role name used to label the component on the application map.
  /// [samplingPercentage] Specifies the percentage for fixed-percentage sampling.
  /// [samplingRequestsPerSecond] Specifies the number of requests per second for the rate-limited sampling.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  SpringCloudApplicationInsightsApplicationPerformanceMonitoringState({
    this.connectionString,
    this.globallyEnabled,
    this.name,
    this.roleInstance,
    this.roleName,
    this.samplingPercentage,
    this.samplingRequestsPerSecond,
    this.springCloudServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'roleInstance': ?roleInstance,
      'roleName': ?roleName,
      'samplingPercentage': ?samplingPercentage,
      'samplingRequestsPerSecond': ?samplingRequestsPerSecond,
      'springCloudServiceId': ?springCloudServiceId,
    };
  }

  factory SpringCloudApplicationInsightsApplicationPerformanceMonitoringState.fromMap(Map<String, dynamic> map) {
    return SpringCloudApplicationInsightsApplicationPerformanceMonitoringState(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globallyEnabled: (() { final guardedValue = map['globallyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleInstance: (() { final guardedValue = map['roleInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samplingPercentage: (() { final guardedValue = map['samplingPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      samplingRequestsPerSecond: (() { final guardedValue = map['samplingRequestsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      springCloudServiceId: (() { final guardedValue = map['springCloudServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_elastic_application_performance_monitoring_spring_cloud_elastic_application_performance_monitoring_args_doc}
/// The set of arguments for SpringCloudElasticApplicationPerformanceMonitoring.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_elastic_application_performance_monitoring_spring_cloud_elastic_application_performance_monitoring_args_doc}
class SpringCloudElasticApplicationPerformanceMonitoringArgs {
  /// Specifies a list of the packages which should be used to determine whether a stack trace frame is an in-app frame or a library frame. This is a comma separated list of package names.
  final pulumi.Input<List<String>> applicationPackages;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Elastic. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the server URL. The URL must be fully qualified, including protocol (http or https) and port.
  final pulumi.Input<String> serverUrl;
  /// Specifies the service name which is used to keep all the errors and transactions of your service together and is the primary filter in the Elastic APM user interface.
  final pulumi.Input<String> serviceName;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudElasticApplicationPerformanceMonitoringArgs].
  /// [applicationPackages] Specifies a list of the packages which should be used to determine whether a stack trace frame is an in-app frame or a library frame. This is a comma separated list of package names.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for Elastic. Changing this forces a new resource to be created.
  /// [serverUrl] Specifies the server URL. The URL must be fully qualified, including protocol (http or https) and port.
  /// [serviceName] Specifies the service name which is used to keep all the errors and transactions of your service together and is the primary filter in the Elastic APM user interface.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  SpringCloudElasticApplicationPerformanceMonitoringArgs({
    required this.applicationPackages,
    this.globallyEnabled,
    this.name,
    required this.serverUrl,
    required this.serviceName,
    required this.springCloudServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPackages': applicationPackages,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'serverUrl': serverUrl,
      'serviceName': serviceName,
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudElasticApplicationPerformanceMonitoringArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudElasticApplicationPerformanceMonitoringArgs(
      applicationPackages: pulumi.Input.fromValue((map['applicationPackages'] as List).cast<String>()),
      globallyEnabled: (() { final guardedValue = map['globallyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverUrl: pulumi.Input.fromValue(map['serverUrl'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      springCloudServiceId: pulumi.Input.fromValue(map['springCloudServiceId'] as String),
    );
  }
}


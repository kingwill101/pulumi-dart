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
    required pulumi.Output<List<String>> applicationPackages,
    pulumi.Output<bool>? globallyEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> serverUrl,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> springCloudServiceId,
  }) :
      applicationPackages = pulumi.Input.asInput<List<String>>(applicationPackages),
      globallyEnabled = pulumi.Input.asOptionalInput<bool>(globallyEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverUrl = pulumi.Input.asInput<String>(serverUrl),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId);

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
      applicationPackages: pulumi.Output.create<List<String>>((map['applicationPackages'] as List).cast<String>()),
      globallyEnabled: map['globallyEnabled'] == null ? null : pulumi.Output.create<bool>(map['globallyEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverUrl: pulumi.Output.create<String>(map['serverUrl'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      springCloudServiceId: pulumi.Output.create<String>(map['springCloudServiceId'] as String),
    );
  }
}


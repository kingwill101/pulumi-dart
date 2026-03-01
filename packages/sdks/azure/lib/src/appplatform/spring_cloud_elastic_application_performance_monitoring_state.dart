// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudElasticApplicationPerformanceMonitoring resources.
class SpringCloudElasticApplicationPerformanceMonitoringState {
  /// Specifies a list of the packages which should be used to determine whether a stack trace frame is an in-app frame or a library frame. This is a comma separated list of package names.
  final pulumi.Input<List<String>>? applicationPackages;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Elastic. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the server URL. The URL must be fully qualified, including protocol (http or https) and port.
  final pulumi.Input<String>? serverUrl;
  /// Specifies the service name which is used to keep all the errors and transactions of your service together and is the primary filter in the Elastic APM user interface.
  final pulumi.Input<String>? serviceName;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudServiceId;

  /// Creates a new [SpringCloudElasticApplicationPerformanceMonitoringState].
  /// [applicationPackages] Specifies a list of the packages which should be used to determine whether a stack trace frame is an in-app frame or a library frame. This is a comma separated list of package names.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for Elastic. Changing this forces a new resource to be created.
  /// [serverUrl] Specifies the server URL. The URL must be fully qualified, including protocol (http or https) and port.
  /// [serviceName] Specifies the service name which is used to keep all the errors and transactions of your service together and is the primary filter in the Elastic APM user interface.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  SpringCloudElasticApplicationPerformanceMonitoringState({
    pulumi.Output<List<String>>? applicationPackages,
    pulumi.Output<bool>? globallyEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? serverUrl,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? springCloudServiceId,
  }) :
      applicationPackages = pulumi.Input.asOptionalInput<List<String>>(applicationPackages),
      globallyEnabled = pulumi.Input.asOptionalInput<bool>(globallyEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverUrl = pulumi.Input.asOptionalInput<String>(serverUrl),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      springCloudServiceId = pulumi.Input.asOptionalInput<String>(springCloudServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPackages': ?applicationPackages,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'serverUrl': ?serverUrl,
      'serviceName': ?serviceName,
      'springCloudServiceId': ?springCloudServiceId,
    };
  }

  factory SpringCloudElasticApplicationPerformanceMonitoringState.fromMap(Map<String, dynamic> map) {
    return SpringCloudElasticApplicationPerformanceMonitoringState(
      applicationPackages: map['applicationPackages'] == null ? null : pulumi.Output.create<List<String>>((map['applicationPackages'] as List).cast<String>()),
      globallyEnabled: map['globallyEnabled'] == null ? null : pulumi.Output.create<bool>(map['globallyEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverUrl: map['serverUrl'] == null ? null : pulumi.Output.create<String>(map['serverUrl'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : pulumi.Output.create<String>(map['springCloudServiceId'] as String),
    );
  }
}


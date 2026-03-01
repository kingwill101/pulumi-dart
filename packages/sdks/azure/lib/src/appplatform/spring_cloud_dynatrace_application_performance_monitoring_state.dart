// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudDynatraceApplicationPerformanceMonitoring resources.
class SpringCloudDynatraceApplicationPerformanceMonitoringState {
  /// Specifies the API token of the Dynatrace environment.
  final pulumi.Input<String>? apiToken;
  /// Specifies the API Url of the Dynatrace environment.
  final pulumi.Input<String>? apiUrl;
  /// Specifies the endpoint to connect to the Dynatrace environment.
  final pulumi.Input<String>? connectionPoint;
  /// Specifies the Dynatrace environment ID.
  final pulumi.Input<String>? environmentId;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Dynatrace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudServiceId;
  /// Specifies the Dynatrace tenant.
  final pulumi.Input<String>? tenant;
  /// Specifies the internal token that is used for authentication when OneAgent connects to the Dynatrace cluster to send data.
  final pulumi.Input<String>? tenantToken;

  /// Creates a new [SpringCloudDynatraceApplicationPerformanceMonitoringState].
  /// [apiToken] Specifies the API token of the Dynatrace environment.
  /// [apiUrl] Specifies the API Url of the Dynatrace environment.
  /// [connectionPoint] Specifies the endpoint to connect to the Dynatrace environment.
  /// [environmentId] Specifies the Dynatrace environment ID.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for Dynatrace. Changing this forces a new resource to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  /// [tenant] Specifies the Dynatrace tenant.
  /// [tenantToken] Specifies the internal token that is used for authentication when OneAgent connects to the Dynatrace cluster to send data.
  SpringCloudDynatraceApplicationPerformanceMonitoringState({
    pulumi.Output<String>? apiToken,
    pulumi.Output<String>? apiUrl,
    pulumi.Output<String>? connectionPoint,
    pulumi.Output<String>? environmentId,
    pulumi.Output<bool>? globallyEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudServiceId,
    pulumi.Output<String>? tenant,
    pulumi.Output<String>? tenantToken,
  }) :
      apiToken = pulumi.Input.asOptionalInput<String>(apiToken),
      apiUrl = pulumi.Input.asOptionalInput<String>(apiUrl),
      connectionPoint = pulumi.Input.asOptionalInput<String>(connectionPoint),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      globallyEnabled = pulumi.Input.asOptionalInput<bool>(globallyEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asOptionalInput<String>(springCloudServiceId),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      tenantToken = pulumi.Input.asOptionalInput<String>(tenantToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiToken': ?apiToken,
      'apiUrl': ?apiUrl,
      'connectionPoint': ?connectionPoint,
      'environmentId': ?environmentId,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'springCloudServiceId': ?springCloudServiceId,
      'tenant': ?tenant,
      'tenantToken': ?tenantToken,
    };
  }

  factory SpringCloudDynatraceApplicationPerformanceMonitoringState.fromMap(Map<String, dynamic> map) {
    return SpringCloudDynatraceApplicationPerformanceMonitoringState(
      apiToken: map['apiToken'] == null ? null : pulumi.Output.create<String>(map['apiToken'] as String),
      apiUrl: map['apiUrl'] == null ? null : pulumi.Output.create<String>(map['apiUrl'] as String),
      connectionPoint: map['connectionPoint'] == null ? null : pulumi.Output.create<String>(map['connectionPoint'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      globallyEnabled: map['globallyEnabled'] == null ? null : pulumi.Output.create<bool>(map['globallyEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : pulumi.Output.create<String>(map['springCloudServiceId'] as String),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
      tenantToken: map['tenantToken'] == null ? null : pulumi.Output.create<String>(map['tenantToken'] as String),
    );
  }
}


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
    this.apiToken,
    this.apiUrl,
    this.connectionPoint,
    this.environmentId,
    this.globallyEnabled,
    this.name,
    this.springCloudServiceId,
    this.tenant,
    this.tenantToken,
  });

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
      apiToken: map['apiToken'] == null ? null : (map['apiToken'] as String).input(),
      apiUrl: map['apiUrl'] == null ? null : (map['apiUrl'] as String).input(),
      connectionPoint: map['connectionPoint'] == null ? null : (map['connectionPoint'] as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      globallyEnabled: map['globallyEnabled'] == null ? null : (map['globallyEnabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : (map['springCloudServiceId'] as String).input(),
      tenant: map['tenant'] == null ? null : (map['tenant'] as String).input(),
      tenantToken: map['tenantToken'] == null ? null : (map['tenantToken'] as String).input(),
    );
  }
}


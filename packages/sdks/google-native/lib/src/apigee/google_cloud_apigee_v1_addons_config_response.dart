// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_advanced_api_ops_config_response.dart';
import 'google_cloud_apigee_v1_analytics_config_response.dart';
import 'google_cloud_apigee_v1_api_security_config_response.dart';
import 'google_cloud_apigee_v1_connectors_platform_config_response.dart';
import 'google_cloud_apigee_v1_integration_config_response.dart';
import 'google_cloud_apigee_v1_monetization_config_response.dart';

/// Add-on configurations for the Apigee organization.
class GoogleCloudApigeeV1AddonsConfigResponse {
  /// Configuration for the Advanced API Ops add-on.
  final pulumi.Input<GoogleCloudApigeeV1AdvancedApiOpsConfigResponse> advancedApiOpsConfig;
  /// Configuration for the Analytics add-on.
  final pulumi.Input<GoogleCloudApigeeV1AnalyticsConfigResponse> analyticsConfig;
  /// Configuration for the API Security add-on.
  final pulumi.Input<GoogleCloudApigeeV1ApiSecurityConfigResponse> apiSecurityConfig;
  /// Configuration for the Connectors Platform add-on.
  final pulumi.Input<GoogleCloudApigeeV1ConnectorsPlatformConfigResponse> connectorsPlatformConfig;
  /// Configuration for the Integration add-on.
  final pulumi.Input<GoogleCloudApigeeV1IntegrationConfigResponse> integrationConfig;
  /// Configuration for the Monetization add-on.
  final pulumi.Input<GoogleCloudApigeeV1MonetizationConfigResponse> monetizationConfig;

  /// Creates a new [GoogleCloudApigeeV1AddonsConfigResponse].
  /// [advancedApiOpsConfig] Configuration for the Advanced API Ops add-on.
  /// [analyticsConfig] Configuration for the Analytics add-on.
  /// [apiSecurityConfig] Configuration for the API Security add-on.
  /// [connectorsPlatformConfig] Configuration for the Connectors Platform add-on.
  /// [integrationConfig] Configuration for the Integration add-on.
  /// [monetizationConfig] Configuration for the Monetization add-on.
  GoogleCloudApigeeV1AddonsConfigResponse({
    required this.advancedApiOpsConfig,
    required this.analyticsConfig,
    required this.apiSecurityConfig,
    required this.connectorsPlatformConfig,
    required this.integrationConfig,
    required this.monetizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedApiOpsConfig': pulumi.Input.mapInputValue<GoogleCloudApigeeV1AdvancedApiOpsConfigResponse, Map<String, dynamic>>(advancedApiOpsConfig, (value) => value.toMap()),
      'analyticsConfig': pulumi.Input.mapInputValue<GoogleCloudApigeeV1AnalyticsConfigResponse, Map<String, dynamic>>(analyticsConfig, (value) => value.toMap()),
      'apiSecurityConfig': pulumi.Input.mapInputValue<GoogleCloudApigeeV1ApiSecurityConfigResponse, Map<String, dynamic>>(apiSecurityConfig, (value) => value.toMap()),
      'connectorsPlatformConfig': pulumi.Input.mapInputValue<GoogleCloudApigeeV1ConnectorsPlatformConfigResponse, Map<String, dynamic>>(connectorsPlatformConfig, (value) => value.toMap()),
      'integrationConfig': pulumi.Input.mapInputValue<GoogleCloudApigeeV1IntegrationConfigResponse, Map<String, dynamic>>(integrationConfig, (value) => value.toMap()),
      'monetizationConfig': pulumi.Input.mapInputValue<GoogleCloudApigeeV1MonetizationConfigResponse, Map<String, dynamic>>(monetizationConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1AddonsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AddonsConfigResponse(
      advancedApiOpsConfig: (GoogleCloudApigeeV1AdvancedApiOpsConfigResponse.fromMap((map['advancedApiOpsConfig'] as Map).cast<String, dynamic>())).input(),
      analyticsConfig: (GoogleCloudApigeeV1AnalyticsConfigResponse.fromMap((map['analyticsConfig'] as Map).cast<String, dynamic>())).input(),
      apiSecurityConfig: (GoogleCloudApigeeV1ApiSecurityConfigResponse.fromMap((map['apiSecurityConfig'] as Map).cast<String, dynamic>())).input(),
      connectorsPlatformConfig: (GoogleCloudApigeeV1ConnectorsPlatformConfigResponse.fromMap((map['connectorsPlatformConfig'] as Map).cast<String, dynamic>())).input(),
      integrationConfig: (GoogleCloudApigeeV1IntegrationConfigResponse.fromMap((map['integrationConfig'] as Map).cast<String, dynamic>())).input(),
      monetizationConfig: (GoogleCloudApigeeV1MonetizationConfigResponse.fromMap((map['monetizationConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


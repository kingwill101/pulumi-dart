// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_advanced_api_ops_config.dart';
import 'google_cloud_apigee_v1_analytics_config.dart';
import 'google_cloud_apigee_v1_api_security_config.dart';
import 'google_cloud_apigee_v1_connectors_platform_config.dart';
import 'google_cloud_apigee_v1_integration_config.dart';
import 'google_cloud_apigee_v1_monetization_config.dart';

/// Add-on configurations for the Apigee organization.
class GoogleCloudApigeeV1AddonsConfig {
  /// Configuration for the Advanced API Ops add-on.
  final pulumi.Input<GoogleCloudApigeeV1AdvancedApiOpsConfig>? advancedApiOpsConfig;
  /// Configuration for the Analytics add-on.
  final pulumi.Input<GoogleCloudApigeeV1AnalyticsConfig>? analyticsConfig;
  /// Configuration for the API Security add-on.
  final pulumi.Input<GoogleCloudApigeeV1ApiSecurityConfig>? apiSecurityConfig;
  /// Configuration for the Connectors Platform add-on.
  final pulumi.Input<GoogleCloudApigeeV1ConnectorsPlatformConfig>? connectorsPlatformConfig;
  /// Configuration for the Integration add-on.
  final pulumi.Input<GoogleCloudApigeeV1IntegrationConfig>? integrationConfig;
  /// Configuration for the Monetization add-on.
  final pulumi.Input<GoogleCloudApigeeV1MonetizationConfig>? monetizationConfig;

  /// Creates a new [GoogleCloudApigeeV1AddonsConfig].
  /// [advancedApiOpsConfig] Configuration for the Advanced API Ops add-on.
  /// [analyticsConfig] Configuration for the Analytics add-on.
  /// [apiSecurityConfig] Configuration for the API Security add-on.
  /// [connectorsPlatformConfig] Configuration for the Connectors Platform add-on.
  /// [integrationConfig] Configuration for the Integration add-on.
  /// [monetizationConfig] Configuration for the Monetization add-on.
  GoogleCloudApigeeV1AddonsConfig({
    this.advancedApiOpsConfig,
    this.analyticsConfig,
    this.apiSecurityConfig,
    this.connectorsPlatformConfig,
    this.integrationConfig,
    this.monetizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedApiOpsConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1AdvancedApiOpsConfig, Map<String, dynamic>>(advancedApiOpsConfig, (value) => value.toMap()),
      'analyticsConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1AnalyticsConfig, Map<String, dynamic>>(analyticsConfig, (value) => value.toMap()),
      'apiSecurityConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1ApiSecurityConfig, Map<String, dynamic>>(apiSecurityConfig, (value) => value.toMap()),
      'connectorsPlatformConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1ConnectorsPlatformConfig, Map<String, dynamic>>(connectorsPlatformConfig, (value) => value.toMap()),
      'integrationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1IntegrationConfig, Map<String, dynamic>>(integrationConfig, (value) => value.toMap()),
      'monetizationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1MonetizationConfig, Map<String, dynamic>>(monetizationConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1AddonsConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AddonsConfig(
      advancedApiOpsConfig: map['advancedApiOpsConfig'] == null ? null : (GoogleCloudApigeeV1AdvancedApiOpsConfig.fromMap((map['advancedApiOpsConfig']! as Map).cast<String, dynamic>())).input(),
      analyticsConfig: map['analyticsConfig'] == null ? null : (GoogleCloudApigeeV1AnalyticsConfig.fromMap((map['analyticsConfig']! as Map).cast<String, dynamic>())).input(),
      apiSecurityConfig: map['apiSecurityConfig'] == null ? null : (GoogleCloudApigeeV1ApiSecurityConfig.fromMap((map['apiSecurityConfig']! as Map).cast<String, dynamic>())).input(),
      connectorsPlatformConfig: map['connectorsPlatformConfig'] == null ? null : (GoogleCloudApigeeV1ConnectorsPlatformConfig.fromMap((map['connectorsPlatformConfig']! as Map).cast<String, dynamic>())).input(),
      integrationConfig: map['integrationConfig'] == null ? null : (GoogleCloudApigeeV1IntegrationConfig.fromMap((map['integrationConfig']! as Map).cast<String, dynamic>())).input(),
      monetizationConfig: map['monetizationConfig'] == null ? null : (GoogleCloudApigeeV1MonetizationConfig.fromMap((map['monetizationConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


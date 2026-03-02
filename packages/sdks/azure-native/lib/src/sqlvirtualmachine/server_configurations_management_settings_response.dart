// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadauthentication_settings_response.dart';
import 'additional_features_server_configurations_response.dart';
import 'sql_connectivity_update_settings_response.dart';
import 'sql_storage_update_settings_response.dart';
import 'sql_workload_type_update_settings_response.dart';
import 'sqlinstance_settings_response.dart';

/// Set the connectivity, storage and workload settings.
class ServerConfigurationsManagementSettingsResponse {
  /// Additional SQL feature settings.
  final pulumi.Input<AdditionalFeaturesServerConfigurationsResponse>? additionalFeaturesServerConfigurations;
  /// Azure AD authentication Settings.
  final pulumi.Input<AADAuthenticationSettingsResponse>? azureAdAuthenticationSettings;
  /// SQL connectivity type settings.
  final pulumi.Input<SqlConnectivityUpdateSettingsResponse>? sqlConnectivityUpdateSettings;
  /// SQL Instance settings.
  final pulumi.Input<SQLInstanceSettingsResponse>? sqlInstanceSettings;
  /// SQL storage update settings.
  final pulumi.Input<SqlStorageUpdateSettingsResponse>? sqlStorageUpdateSettings;
  /// SQL workload type settings.
  final pulumi.Input<SqlWorkloadTypeUpdateSettingsResponse>? sqlWorkloadTypeUpdateSettings;

  /// Creates a new [ServerConfigurationsManagementSettingsResponse].
  /// [additionalFeaturesServerConfigurations] Additional SQL feature settings.
  /// [azureAdAuthenticationSettings] Azure AD authentication Settings.
  /// [sqlConnectivityUpdateSettings] SQL connectivity type settings.
  /// [sqlInstanceSettings] SQL Instance settings.
  /// [sqlStorageUpdateSettings] SQL storage update settings.
  /// [sqlWorkloadTypeUpdateSettings] SQL workload type settings.
  ServerConfigurationsManagementSettingsResponse({
    this.additionalFeaturesServerConfigurations,
    this.azureAdAuthenticationSettings,
    this.sqlConnectivityUpdateSettings,
    this.sqlInstanceSettings,
    this.sqlStorageUpdateSettings,
    this.sqlWorkloadTypeUpdateSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFeaturesServerConfigurations': ?pulumi.Input.mapOptionalInputValue<AdditionalFeaturesServerConfigurationsResponse, Map<String, dynamic>>(additionalFeaturesServerConfigurations, (value) => value.toMap()),
      'azureAdAuthenticationSettings': ?pulumi.Input.mapOptionalInputValue<AADAuthenticationSettingsResponse, Map<String, dynamic>>(azureAdAuthenticationSettings, (value) => value.toMap()),
      'sqlConnectivityUpdateSettings': ?pulumi.Input.mapOptionalInputValue<SqlConnectivityUpdateSettingsResponse, Map<String, dynamic>>(sqlConnectivityUpdateSettings, (value) => value.toMap()),
      'sqlInstanceSettings': ?pulumi.Input.mapOptionalInputValue<SQLInstanceSettingsResponse, Map<String, dynamic>>(sqlInstanceSettings, (value) => value.toMap()),
      'sqlStorageUpdateSettings': ?pulumi.Input.mapOptionalInputValue<SqlStorageUpdateSettingsResponse, Map<String, dynamic>>(sqlStorageUpdateSettings, (value) => value.toMap()),
      'sqlWorkloadTypeUpdateSettings': ?pulumi.Input.mapOptionalInputValue<SqlWorkloadTypeUpdateSettingsResponse, Map<String, dynamic>>(sqlWorkloadTypeUpdateSettings, (value) => value.toMap()),
    };
  }

  factory ServerConfigurationsManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerConfigurationsManagementSettingsResponse(
      additionalFeaturesServerConfigurations: map['additionalFeaturesServerConfigurations'] == null ? null : (AdditionalFeaturesServerConfigurationsResponse.fromMap((map['additionalFeaturesServerConfigurations']! as Map).cast<String, dynamic>())).input(),
      azureAdAuthenticationSettings: map['azureAdAuthenticationSettings'] == null ? null : (AADAuthenticationSettingsResponse.fromMap((map['azureAdAuthenticationSettings']! as Map).cast<String, dynamic>())).input(),
      sqlConnectivityUpdateSettings: map['sqlConnectivityUpdateSettings'] == null ? null : (SqlConnectivityUpdateSettingsResponse.fromMap((map['sqlConnectivityUpdateSettings']! as Map).cast<String, dynamic>())).input(),
      sqlInstanceSettings: map['sqlInstanceSettings'] == null ? null : (SQLInstanceSettingsResponse.fromMap((map['sqlInstanceSettings']! as Map).cast<String, dynamic>())).input(),
      sqlStorageUpdateSettings: map['sqlStorageUpdateSettings'] == null ? null : (SqlStorageUpdateSettingsResponse.fromMap((map['sqlStorageUpdateSettings']! as Map).cast<String, dynamic>())).input(),
      sqlWorkloadTypeUpdateSettings: map['sqlWorkloadTypeUpdateSettings'] == null ? null : (SqlWorkloadTypeUpdateSettingsResponse.fromMap((map['sqlWorkloadTypeUpdateSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


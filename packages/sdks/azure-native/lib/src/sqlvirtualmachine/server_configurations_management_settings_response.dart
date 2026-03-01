// ignore_for_file: unused_element, unnecessary_cast

import 'aadauthentication_settings_response.dart';
import 'additional_features_server_configurations_response.dart';
import 'sql_connectivity_update_settings_response.dart';
import 'sql_storage_update_settings_response.dart';
import 'sql_workload_type_update_settings_response.dart';
import 'sqlinstance_settings_response.dart';

/// Set the connectivity, storage and workload settings.
class ServerConfigurationsManagementSettingsResponse {
  /// Additional SQL feature settings.
  final AdditionalFeaturesServerConfigurationsResponse? additionalFeaturesServerConfigurations;
  /// Azure AD authentication Settings.
  final AADAuthenticationSettingsResponse? azureAdAuthenticationSettings;
  /// SQL connectivity type settings.
  final SqlConnectivityUpdateSettingsResponse? sqlConnectivityUpdateSettings;
  /// SQL Instance settings.
  final SQLInstanceSettingsResponse? sqlInstanceSettings;
  /// SQL storage update settings.
  final SqlStorageUpdateSettingsResponse? sqlStorageUpdateSettings;
  /// SQL workload type settings.
  final SqlWorkloadTypeUpdateSettingsResponse? sqlWorkloadTypeUpdateSettings;

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
      'additionalFeaturesServerConfigurations': ?additionalFeaturesServerConfigurations == null ? null : additionalFeaturesServerConfigurations!.toMap(),
      'azureAdAuthenticationSettings': ?azureAdAuthenticationSettings == null ? null : azureAdAuthenticationSettings!.toMap(),
      'sqlConnectivityUpdateSettings': ?sqlConnectivityUpdateSettings == null ? null : sqlConnectivityUpdateSettings!.toMap(),
      'sqlInstanceSettings': ?sqlInstanceSettings == null ? null : sqlInstanceSettings!.toMap(),
      'sqlStorageUpdateSettings': ?sqlStorageUpdateSettings == null ? null : sqlStorageUpdateSettings!.toMap(),
      'sqlWorkloadTypeUpdateSettings': ?sqlWorkloadTypeUpdateSettings == null ? null : sqlWorkloadTypeUpdateSettings!.toMap(),
    };
  }

  factory ServerConfigurationsManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerConfigurationsManagementSettingsResponse(
      additionalFeaturesServerConfigurations: map['additionalFeaturesServerConfigurations'] == null ? null : AdditionalFeaturesServerConfigurationsResponse.fromMap((map['additionalFeaturesServerConfigurations'] as Map).cast<String, dynamic>()),
      azureAdAuthenticationSettings: map['azureAdAuthenticationSettings'] == null ? null : AADAuthenticationSettingsResponse.fromMap((map['azureAdAuthenticationSettings'] as Map).cast<String, dynamic>()),
      sqlConnectivityUpdateSettings: map['sqlConnectivityUpdateSettings'] == null ? null : SqlConnectivityUpdateSettingsResponse.fromMap((map['sqlConnectivityUpdateSettings'] as Map).cast<String, dynamic>()),
      sqlInstanceSettings: map['sqlInstanceSettings'] == null ? null : SQLInstanceSettingsResponse.fromMap((map['sqlInstanceSettings'] as Map).cast<String, dynamic>()),
      sqlStorageUpdateSettings: map['sqlStorageUpdateSettings'] == null ? null : SqlStorageUpdateSettingsResponse.fromMap((map['sqlStorageUpdateSettings'] as Map).cast<String, dynamic>()),
      sqlWorkloadTypeUpdateSettings: map['sqlWorkloadTypeUpdateSettings'] == null ? null : SqlWorkloadTypeUpdateSettingsResponse.fromMap((map['sqlWorkloadTypeUpdateSettings'] as Map).cast<String, dynamic>()),
    );
  }
}


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
  final pulumi.Input<AdditionalFeaturesServerConfigurationsResponse?>? additionalFeaturesServerConfigurations;
  /// Azure AD authentication Settings.
  final pulumi.Input<AADAuthenticationSettingsResponse?>? azureAdAuthenticationSettings;
  /// SQL connectivity type settings.
  final pulumi.Input<SqlConnectivityUpdateSettingsResponse?>? sqlConnectivityUpdateSettings;
  /// SQL Instance settings.
  final pulumi.Input<SQLInstanceSettingsResponse?>? sqlInstanceSettings;
  /// SQL storage update settings.
  final pulumi.Input<SqlStorageUpdateSettingsResponse?>? sqlStorageUpdateSettings;
  /// SQL workload type settings.
  final pulumi.Input<SqlWorkloadTypeUpdateSettingsResponse?>? sqlWorkloadTypeUpdateSettings;

  /// Creates a new [ServerConfigurationsManagementSettingsResponse].
  /// [additionalFeaturesServerConfigurations] Additional SQL feature settings.
  /// [azureAdAuthenticationSettings] Azure AD authentication Settings.
  /// [sqlConnectivityUpdateSettings] SQL connectivity type settings.
  /// [sqlInstanceSettings] SQL Instance settings.
  /// [sqlStorageUpdateSettings] SQL storage update settings.
  /// [sqlWorkloadTypeUpdateSettings] SQL workload type settings.
  const ServerConfigurationsManagementSettingsResponse({
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
      additionalFeaturesServerConfigurations: (() { final guardedValue = map['additionalFeaturesServerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalFeaturesServerConfigurationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAdAuthenticationSettings: (() { final guardedValue = map['azureAdAuthenticationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AADAuthenticationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlConnectivityUpdateSettings: (() { final guardedValue = map['sqlConnectivityUpdateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlConnectivityUpdateSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlInstanceSettings: (() { final guardedValue = map['sqlInstanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SQLInstanceSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlStorageUpdateSettings: (() { final guardedValue = map['sqlStorageUpdateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlStorageUpdateSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlWorkloadTypeUpdateSettings: (() { final guardedValue = map['sqlWorkloadTypeUpdateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlWorkloadTypeUpdateSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

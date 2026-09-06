// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadauthentication_settings.dart';
import 'additional_features_server_configurations.dart';
import 'sql_connectivity_update_settings.dart';
import 'sql_storage_update_settings.dart';
import 'sql_workload_type_update_settings.dart';
import 'sqlinstance_settings.dart';

/// Set the connectivity, storage and workload settings.
class ServerConfigurationsManagementSettings {
  /// Additional SQL feature settings.
  final pulumi.Input<AdditionalFeaturesServerConfigurations?>? additionalFeaturesServerConfigurations;
  /// Azure AD authentication Settings.
  final pulumi.Input<AADAuthenticationSettings?>? azureAdAuthenticationSettings;
  /// SQL connectivity type settings.
  final pulumi.Input<SqlConnectivityUpdateSettings?>? sqlConnectivityUpdateSettings;
  /// SQL Instance settings.
  final pulumi.Input<SQLInstanceSettings?>? sqlInstanceSettings;
  /// SQL storage update settings.
  final pulumi.Input<SqlStorageUpdateSettings?>? sqlStorageUpdateSettings;
  /// SQL workload type settings.
  final pulumi.Input<SqlWorkloadTypeUpdateSettings?>? sqlWorkloadTypeUpdateSettings;

  /// Creates a new [ServerConfigurationsManagementSettings].
  /// [additionalFeaturesServerConfigurations] Additional SQL feature settings.
  /// [azureAdAuthenticationSettings] Azure AD authentication Settings.
  /// [sqlConnectivityUpdateSettings] SQL connectivity type settings.
  /// [sqlInstanceSettings] SQL Instance settings.
  /// [sqlStorageUpdateSettings] SQL storage update settings.
  /// [sqlWorkloadTypeUpdateSettings] SQL workload type settings.
  const ServerConfigurationsManagementSettings({
    this.additionalFeaturesServerConfigurations,
    this.azureAdAuthenticationSettings,
    this.sqlConnectivityUpdateSettings,
    this.sqlInstanceSettings,
    this.sqlStorageUpdateSettings,
    this.sqlWorkloadTypeUpdateSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFeaturesServerConfigurations': ?pulumi.Input.mapOptionalInputValue<AdditionalFeaturesServerConfigurations, Map<String, dynamic>>(additionalFeaturesServerConfigurations, (value) => value.toMap()),
      'azureAdAuthenticationSettings': ?pulumi.Input.mapOptionalInputValue<AADAuthenticationSettings, Map<String, dynamic>>(azureAdAuthenticationSettings, (value) => value.toMap()),
      'sqlConnectivityUpdateSettings': ?pulumi.Input.mapOptionalInputValue<SqlConnectivityUpdateSettings, Map<String, dynamic>>(sqlConnectivityUpdateSettings, (value) => value.toMap()),
      'sqlInstanceSettings': ?pulumi.Input.mapOptionalInputValue<SQLInstanceSettings, Map<String, dynamic>>(sqlInstanceSettings, (value) => value.toMap()),
      'sqlStorageUpdateSettings': ?pulumi.Input.mapOptionalInputValue<SqlStorageUpdateSettings, Map<String, dynamic>>(sqlStorageUpdateSettings, (value) => value.toMap()),
      'sqlWorkloadTypeUpdateSettings': ?pulumi.Input.mapOptionalInputValue<SqlWorkloadTypeUpdateSettings, Map<String, dynamic>>(sqlWorkloadTypeUpdateSettings, (value) => value.toMap()),
    };
  }

  factory ServerConfigurationsManagementSettings.fromMap(Map<String, dynamic> map) {
    return ServerConfigurationsManagementSettings(
      additionalFeaturesServerConfigurations: (() { final guardedValue = map['additionalFeaturesServerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalFeaturesServerConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAdAuthenticationSettings: (() { final guardedValue = map['azureAdAuthenticationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AADAuthenticationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlConnectivityUpdateSettings: (() { final guardedValue = map['sqlConnectivityUpdateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlConnectivityUpdateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlInstanceSettings: (() { final guardedValue = map['sqlInstanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SQLInstanceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlStorageUpdateSettings: (() { final guardedValue = map['sqlStorageUpdateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlStorageUpdateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlWorkloadTypeUpdateSettings: (() { final guardedValue = map['sqlWorkloadTypeUpdateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlWorkloadTypeUpdateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_ip_configuration_authorized_network.dart';
import 'database_instance_settings_ip_configuration_psc_config.dart';

class DatabaseInstanceSettingsIpConfiguration {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final pulumi.Input<String>? allocatedIpRange;
  final pulumi.Input<
    List<DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork>
  >?
  authorizedNetworks;

  /// The custom subject alternative names for an instance with `CUSTOMER_MANAGED_CAS_CA` as the `server_ca_mode`.
  final pulumi.Input<List<String>>? customSubjectAlternativeNames;

  /// Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported.
  final pulumi.Input<bool>? enablePrivatePathForGoogleCloudServices;

  /// Whether this Cloud SQL instance should be assigned
  /// a public IPV4 address. At least `ipv4_enabled` must be enabled or a
  /// `private_network` must be configured.
  final pulumi.Input<bool>? ipv4Enabled;

  /// The VPC network from which the Cloud SQL
  /// instance is accessible for private IP. For example, projects/myProject/global/networks/default.
  /// Specifying a network enables private IP.
  /// At least `ipv4_enabled` must be enabled or a `private_network` must be configured.
  /// This setting can be updated, but it cannot be removed after it is set.
  final pulumi.Input<String>? privateNetwork;

  /// PSC settings for a Cloud SQL instance.
  final pulumi.Input<List<DatabaseInstanceSettingsIpConfigurationPscConfig>>?
  pscConfigs;

  /// Specify how the server certificate's Certificate Authority is hosted. Supported values are `GOOGLE_MANAGED_INTERNAL_CA` and `GOOGLE_MANAGED_CAS_CA`.
  final pulumi.Input<String>? serverCaMode;

  /// The resource name of the server CA pool for an instance with `CUSTOMER_MANAGED_CAS_CA` as the `server_ca_mode`.
  final pulumi.Input<String>? serverCaPool;

  /// Specify how SSL connection should be enforced in DB connections. Supported values are `ALLOW_UNENCRYPTED_AND_ENCRYPTED`, `ENCRYPTED_ONLY`, and `TRUSTED_CLIENT_CERTIFICATE_REQUIRED` (not supported for SQL Server). See [API reference doc](https://cloud.google.com/sql/docs/postgres/admin-api/rest/v1/instances#ipconfiguration) for details.
  final pulumi.Input<String>? sslMode;

  /// Creates a new [DatabaseInstanceSettingsIpConfiguration].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [authorizedNetworks] Optional.
  /// [customSubjectAlternativeNames] The custom subject alternative names for an instance with `CUSTOMER_MANAGED_CAS_CA` as the `server_ca_mode`.
  /// [enablePrivatePathForGoogleCloudServices] Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported.
  /// [ipv4Enabled] Whether this Cloud SQL instance should be assigned
  /// [privateNetwork] The VPC network from which the Cloud SQL
  /// [pscConfigs] PSC settings for a Cloud SQL instance.
  /// [serverCaMode] Specify how the server certificate's Certificate Authority is hosted. Supported values are `GOOGLE_MANAGED_INTERNAL_CA` and `GOOGLE_MANAGED_CAS_CA`.
  /// [serverCaPool] The resource name of the server CA pool for an instance with `CUSTOMER_MANAGED_CAS_CA` as the `server_ca_mode`.
  /// [sslMode] Specify how SSL connection should be enforced in DB connections. Supported values are `ALLOW_UNENCRYPTED_AND_ENCRYPTED`, `ENCRYPTED_ONLY`, and `TRUSTED_CLIENT_CERTIFICATE_REQUIRED` (not supported for SQL Server). See [API reference doc](https://cloud.google.com/sql/docs/postgres/admin-api/rest/v1/instances#ipconfiguration) for details.
  DatabaseInstanceSettingsIpConfiguration({
    this.allocatedIpRange,
    this.authorizedNetworks,
    this.customSubjectAlternativeNames,
    this.enablePrivatePathForGoogleCloudServices,
    this.ipv4Enabled,
    this.privateNetwork,
    this.pscConfigs,
    this.serverCaMode,
    this.serverCaPool,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': ?allocatedIpRange,
      'authorizedNetworks':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork>,
            List<Map<String, dynamic>>
          >(
            authorizedNetworks,
            (value) =>
                pulumi.Input.encodeList<
                  DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'customSubjectAlternativeNames': ?customSubjectAlternativeNames,
      'enablePrivatePathForGoogleCloudServices':
          ?enablePrivatePathForGoogleCloudServices,
      'ipv4Enabled': ?ipv4Enabled,
      'privateNetwork': ?privateNetwork,
      'pscConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatabaseInstanceSettingsIpConfigurationPscConfig>,
            List<Map<String, dynamic>>
          >(
            pscConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  DatabaseInstanceSettingsIpConfigurationPscConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serverCaMode': ?serverCaMode,
      'serverCaPool': ?serverCaPool,
      'sslMode': ?sslMode,
    };
  }

  factory DatabaseInstanceSettingsIpConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsIpConfiguration(
      allocatedIpRange: (() {
        final guardedValue = map['allocatedIpRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizedNetworks: (() {
        final guardedValue = map['authorizedNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork
          >(
            guardedValue,
            (value) =>
                DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      customSubjectAlternativeNames: (() {
        final guardedValue = map['customSubjectAlternativeNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enablePrivatePathForGoogleCloudServices: (() {
        final guardedValue = map['enablePrivatePathForGoogleCloudServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipv4Enabled: (() {
        final guardedValue = map['ipv4Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      privateNetwork: (() {
        final guardedValue = map['privateNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pscConfigs: (() {
        final guardedValue = map['pscConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DatabaseInstanceSettingsIpConfigurationPscConfig
          >(
            guardedValue,
            (value) => DatabaseInstanceSettingsIpConfigurationPscConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      serverCaMode: (() {
        final guardedValue = map['serverCaMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverCaPool: (() {
        final guardedValue = map['serverCaPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslMode: (() {
        final guardedValue = map['sslMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

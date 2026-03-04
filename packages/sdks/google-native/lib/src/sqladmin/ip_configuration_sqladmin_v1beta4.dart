// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_entry_sqladmin_v1beta4.dart';
import 'ip_configuration_ssl_mode_sqladmin_v1beta4.dart';
import 'psc_config_sqladmin_v1beta4.dart';

/// IP Management configuration.
class IpConfigurationSqladminV1beta4 {
  /// The name of the allocated ip range for the private ip Cloud SQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?.`
  final pulumi.Input<String>? allocatedIpRange;

  /// The list of external networks that are allowed to connect to the instance using the IP. In 'CIDR' notation, also known as 'slash' notation (for example: `157.197.200.0/24`).
  final pulumi.Input<List<AclEntrySqladminV1beta4>>? authorizedNetworks;

  /// Controls connectivity to private IP instances from Google services, such as BigQuery.
  final pulumi.Input<bool>? enablePrivatePathForGoogleCloudServices;

  /// Whether the instance is assigned a public IP address or not.
  final pulumi.Input<bool>? ipv4Enabled;

  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final pulumi.Input<String>? privateNetwork;

  /// PSC settings for this instance.
  final pulumi.Input<PscConfigSqladminV1beta4>? pscConfig;

  /// Whether SSL/TLS connections over IP are enforced. If set to false, then allow both non-SSL/non-TLS and SSL/TLS connections. For SSL/TLS connections, the client certificate won't be verified. If set to true, then only allow connections encrypted with SSL/TLS and with valid client certificates. If you want to enforce SSL/TLS without enforcing the requirement for valid client certificates, then use the `ssl_mode` flag instead of the legacy `require_ssl` flag.
  final pulumi.Input<bool>? requireSsl;

  /// Specify how SSL/TLS is enforced in database connections. This flag is supported only for PostgreSQL. Use the legacy `require_ssl` flag for enforcing SSL/TLS in MySQL and SQL Server. But, for PostgreSQL, use the `ssl_mode` flag instead of the legacy `require_ssl` flag. To avoid the conflict between those flags in PostgreSQL, only the following value pairs are valid: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false` * `ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` Note that the value of `ssl_mode` gets priority over the value of the legacy `require_ssl`. For example, for the pair `ssl_mode=ENCRYPTED_ONLY, require_ssl=false`, the `ssl_mode=ENCRYPTED_ONLY` means "only accepts SSL connection", while the `require_ssl=false` means "both non-SSL and SSL connections are allowed". The database respects `ssl_mode` in this case and only accepts SSL connections.
  final pulumi.Input<IpConfigurationSslModeSqladminV1beta4>? sslMode;

  /// Creates a new [IpConfigurationSqladminV1beta4].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip Cloud SQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?.`
  /// [authorizedNetworks] The list of external networks that are allowed to connect to the instance using the IP. In 'CIDR' notation, also known as 'slash' notation (for example: `157.197.200.0/24`).
  /// [enablePrivatePathForGoogleCloudServices] Controls connectivity to private IP instances from Google services, such as BigQuery.
  /// [ipv4Enabled] Whether the instance is assigned a public IP address or not.
  /// [privateNetwork] The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  /// [pscConfig] PSC settings for this instance.
  /// [requireSsl] Whether SSL/TLS connections over IP are enforced. If set to false, then allow both non-SSL/non-TLS and SSL/TLS connections. For SSL/TLS connections, the client certificate won't be verified. If set to true, then only allow connections encrypted with SSL/TLS and with valid client certificates. If you want to enforce SSL/TLS without enforcing the requirement for valid client certificates, then use the `ssl_mode` flag instead of the legacy `require_ssl` flag.
  /// [sslMode] Specify how SSL/TLS is enforced in database connections. This flag is supported only for PostgreSQL. Use the legacy `require_ssl` flag for enforcing SSL/TLS in MySQL and SQL Server. But, for PostgreSQL, use the `ssl_mode` flag instead of the legacy `require_ssl` flag. To avoid the conflict between those flags in PostgreSQL, only the following value pairs are valid: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false` * `ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` Note that the value of `ssl_mode` gets priority over the value of the legacy `require_ssl`. For example, for the pair `ssl_mode=ENCRYPTED_ONLY, require_ssl=false`, the `ssl_mode=ENCRYPTED_ONLY` means "only accepts SSL connection", while the `require_ssl=false` means "both non-SSL and SSL connections are allowed". The database respects `ssl_mode` in this case and only accepts SSL connections.
  IpConfigurationSqladminV1beta4({
    this.allocatedIpRange,
    this.authorizedNetworks,
    this.enablePrivatePathForGoogleCloudServices,
    this.ipv4Enabled,
    this.privateNetwork,
    this.pscConfig,
    this.requireSsl,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': ?allocatedIpRange,
      'authorizedNetworks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AclEntrySqladminV1beta4>,
            List<Map<String, dynamic>>
          >(
            authorizedNetworks,
            (value) =>
                pulumi.Input.encodeList<
                  AclEntrySqladminV1beta4,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enablePrivatePathForGoogleCloudServices':
          ?enablePrivatePathForGoogleCloudServices,
      'ipv4Enabled': ?ipv4Enabled,
      'privateNetwork': ?privateNetwork,
      'pscConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PscConfigSqladminV1beta4,
            Map<String, dynamic>
          >(pscConfig, (value) => value.toMap()),
      'requireSsl': ?requireSsl,
      'sslMode':
          ?pulumi.Input.mapOptionalInputValue<
            IpConfigurationSslModeSqladminV1beta4,
            String
          >(sslMode, (value) => value.wireValue),
    };
  }

  factory IpConfigurationSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return IpConfigurationSqladminV1beta4(
      allocatedIpRange: (() {
        final guardedValue = map['allocatedIpRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizedNetworks: (() {
        final guardedValue = map['authorizedNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AclEntrySqladminV1beta4>(
            guardedValue,
            (value) => AclEntrySqladminV1beta4.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
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
      pscConfig: (() {
        final guardedValue = map['pscConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PscConfigSqladminV1beta4.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      requireSsl: (() {
        final guardedValue = map['requireSsl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sslMode: (() {
        final guardedValue = map['sslMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IpConfigurationSslModeSqladminV1beta4.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}

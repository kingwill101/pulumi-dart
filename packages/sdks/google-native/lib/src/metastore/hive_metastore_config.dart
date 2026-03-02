// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_metastore_config_endpoint_protocol.dart';
import 'kerberos_config.dart';

/// Specifies configuration information specific to running Hive metastore software as the metastore service.
class HiveMetastoreConfig {
  /// A mapping of Hive metastore version to the auxiliary version configuration. When specified, a secondary Hive metastore service is created along with the primary service. All auxiliary versions must be less than the service's primary version. The key is the auxiliary service name and it must match the regular expression a-z?. This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  final pulumi.Input<Map<String, String>>? auxiliaryVersions;
  /// A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml). The mappings override system defaults (some keys cannot be overridden). These overrides are also applied to auxiliary versions and can be further customized in the auxiliary version's AuxiliaryVersionConfig.
  final pulumi.Input<Map<String, String>>? configOverrides;
  /// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
  final pulumi.Input<HiveMetastoreConfigEndpointProtocol>? endpointProtocol;
  /// Information used to configure the Hive metastore service as a service principal in a Kerberos realm. To disable Kerberos, use the UpdateService method and specify this field's path (hive_metastore_config.kerberos_config) in the request's update_mask while omitting this field from the request's service.
  final pulumi.Input<KerberosConfig>? kerberosConfig;
  /// Immutable. The Hive metastore schema version.
  final pulumi.Input<String>? version;

  /// Creates a new [HiveMetastoreConfig].
  /// [auxiliaryVersions] A mapping of Hive metastore version to the auxiliary version configuration. When specified, a secondary Hive metastore service is created along with the primary service. All auxiliary versions must be less than the service's primary version. The key is the auxiliary service name and it must match the regular expression a-z?. This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  /// [configOverrides] A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml). The mappings override system defaults (some keys cannot be overridden). These overrides are also applied to auxiliary versions and can be further customized in the auxiliary version's AuxiliaryVersionConfig.
  /// [endpointProtocol] The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
  /// [kerberosConfig] Information used to configure the Hive metastore service as a service principal in a Kerberos realm. To disable Kerberos, use the UpdateService method and specify this field's path (hive_metastore_config.kerberos_config) in the request's update_mask while omitting this field from the request's service.
  /// [version] Immutable. The Hive metastore schema version.
  HiveMetastoreConfig({
    this.auxiliaryVersions,
    this.configOverrides,
    this.endpointProtocol,
    this.kerberosConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryVersions': ?auxiliaryVersions,
      'configOverrides': ?configOverrides,
      'endpointProtocol': ?pulumi.Input.mapOptionalInputValue<HiveMetastoreConfigEndpointProtocol, String>(endpointProtocol, (value) => value.value),
      'kerberosConfig': ?pulumi.Input.mapOptionalInputValue<KerberosConfig, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory HiveMetastoreConfig.fromMap(Map<String, dynamic> map) {
    return HiveMetastoreConfig(
      auxiliaryVersions: map['auxiliaryVersions'] == null ? null : ((map['auxiliaryVersions'] as Map).cast<String, String>()).input(),
      configOverrides: map['configOverrides'] == null ? null : ((map['configOverrides'] as Map).cast<String, String>()).input(),
      endpointProtocol: map['endpointProtocol'] == null ? null : (HiveMetastoreConfigEndpointProtocol.fromValue(map['endpointProtocol'] as String)).input(),
      kerberosConfig: map['kerberosConfig'] == null ? null : (KerberosConfig.fromMap((map['kerberosConfig'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}


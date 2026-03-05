// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_metastore_config_endpoint_protocol_metastore_v1beta.dart';
import 'kerberos_config_metastore_v1beta.dart';

/// Specifies configuration information specific to running Hive metastore software as the metastore service.
class HiveMetastoreConfigMetastoreV1beta {
  /// A mapping of Hive metastore version to the auxiliary version configuration. When specified, a secondary Hive metastore service is created along with the primary service. All auxiliary versions must be less than the service's primary version. The key is the auxiliary service name and it must match the regular expression a-z?. This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  final pulumi.Input<Map<String, String>>? auxiliaryVersions;
  /// A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml). The mappings override system defaults (some keys cannot be overridden). These overrides are also applied to auxiliary versions and can be further customized in the auxiliary version's AuxiliaryVersionConfig.
  final pulumi.Input<Map<String, String>>? configOverrides;
  /// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
  final pulumi.Input<HiveMetastoreConfigEndpointProtocolMetastoreV1beta>? endpointProtocol;
  /// Information used to configure the Hive metastore service as a service principal in a Kerberos realm. To disable Kerberos, use the UpdateService method and specify this field's path (hive_metastore_config.kerberos_config) in the request's update_mask while omitting this field from the request's service.
  final pulumi.Input<KerberosConfigMetastoreV1beta>? kerberosConfig;
  /// Immutable. The Hive metastore schema version.
  final pulumi.Input<String>? version;

  /// Creates a new [HiveMetastoreConfigMetastoreV1beta].
  /// [auxiliaryVersions] A mapping of Hive metastore version to the auxiliary version configuration. When specified, a secondary Hive metastore service is created along with the primary service. All auxiliary versions must be less than the service's primary version. The key is the auxiliary service name and it must match the regular expression a-z?. This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  /// [configOverrides] A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml). The mappings override system defaults (some keys cannot be overridden). These overrides are also applied to auxiliary versions and can be further customized in the auxiliary version's AuxiliaryVersionConfig.
  /// [endpointProtocol] The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
  /// [kerberosConfig] Information used to configure the Hive metastore service as a service principal in a Kerberos realm. To disable Kerberos, use the UpdateService method and specify this field's path (hive_metastore_config.kerberos_config) in the request's update_mask while omitting this field from the request's service.
  /// [version] Immutable. The Hive metastore schema version.
  HiveMetastoreConfigMetastoreV1beta({
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
      'endpointProtocol': ?pulumi.Input.mapOptionalInputValue<HiveMetastoreConfigEndpointProtocolMetastoreV1beta, String>(endpointProtocol, (value) => value.wireValue),
      'kerberosConfig': ?pulumi.Input.mapOptionalInputValue<KerberosConfigMetastoreV1beta, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory HiveMetastoreConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return HiveMetastoreConfigMetastoreV1beta(
      auxiliaryVersions: (() { final guardedValue = map['auxiliaryVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      configOverrides: (() { final guardedValue = map['configOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      endpointProtocol: (() { final guardedValue = map['endpointProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HiveMetastoreConfigEndpointProtocolMetastoreV1beta.fromValue(guardedValue as String)); })(),
      kerberosConfig: (() { final guardedValue = map['kerberosConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KerberosConfigMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


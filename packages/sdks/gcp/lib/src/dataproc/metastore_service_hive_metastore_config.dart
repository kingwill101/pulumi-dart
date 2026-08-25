// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_hive_metastore_config_auxiliary_version.dart';
import 'metastore_service_hive_metastore_config_kerberos_config.dart';

class MetastoreServiceHiveMetastoreConfig {
  /// A mapping of Hive metastore version to the auxiliary version configuration.
  /// When specified, a secondary Hive metastore service is created along with the primary service.
  /// All auxiliary versions must be less than the service's primary version.
  /// The key is the auxiliary service name and it must match the regular expression a-z?.
  /// This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  /// Structure is documented below.
  final pulumi.Input<List<MetastoreServiceHiveMetastoreConfigAuxiliaryVersion>?>? auxiliaryVersions;
  /// A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml).
  /// The mappings override system defaults (some keys cannot be overridden)
  final pulumi.Input<Map<String, String>?>? configOverrides;
  /// The protocol to use for the metastore service endpoint. If unspecified, defaults to `THRIFT`.
  /// Default value is `THRIFT`.
  /// Possible values are: `THRIFT`, `GRPC`.
  final pulumi.Input<String?>? endpointProtocol;
  /// Information used to configure the Hive metastore service as a service principal in a Kerberos realm.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceHiveMetastoreConfigKerberosConfig?>? kerberosConfig;
  /// The Hive metastore schema version.
  final pulumi.Input<String> version;

  /// Creates a new [MetastoreServiceHiveMetastoreConfig].
  /// [auxiliaryVersions] A mapping of Hive metastore version to the auxiliary version configuration.
  /// [configOverrides] A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml).
  /// [endpointProtocol] The protocol to use for the metastore service endpoint. If unspecified, defaults to `THRIFT`.
  /// [kerberosConfig] Information used to configure the Hive metastore service as a service principal in a Kerberos realm.
  /// [version] The Hive metastore schema version.
  const MetastoreServiceHiveMetastoreConfig({
    this.auxiliaryVersions,
    this.configOverrides,
    this.endpointProtocol,
    this.kerberosConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryVersions': ?pulumi.Input.mapOptionalInputValue<List<MetastoreServiceHiveMetastoreConfigAuxiliaryVersion>, List<Map<String, dynamic>>>(auxiliaryVersions, (value) => pulumi.Input.encodeList<MetastoreServiceHiveMetastoreConfigAuxiliaryVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configOverrides': ?configOverrides,
      'endpointProtocol': ?endpointProtocol,
      'kerberosConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceHiveMetastoreConfigKerberosConfig, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
      'version': version,
    };
  }

  factory MetastoreServiceHiveMetastoreConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceHiveMetastoreConfig(
      auxiliaryVersions: (() { final guardedValue = map['auxiliaryVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetastoreServiceHiveMetastoreConfigAuxiliaryVersion>(guardedValue, (value) => MetastoreServiceHiveMetastoreConfigAuxiliaryVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configOverrides: (() { final guardedValue = map['configOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      endpointProtocol: (() { final guardedValue = map['endpointProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kerberosConfig: (() { final guardedValue = map['kerberosConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetastoreServiceHiveMetastoreConfigKerberosConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

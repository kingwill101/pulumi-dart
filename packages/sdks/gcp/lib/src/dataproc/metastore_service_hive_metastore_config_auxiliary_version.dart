// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetastoreServiceHiveMetastoreConfigAuxiliaryVersion {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version's overrides.
  /// If keys are present in both the auxiliary version's overrides and the primary version's overrides, the value from the auxiliary version's overrides takes precedence.
  final pulumi.Input<Map<String, String>>? configOverrides;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> key;
  /// The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service's version.
  final pulumi.Input<String> version;

  /// Creates a new [MetastoreServiceHiveMetastoreConfigAuxiliaryVersion].
  /// [configOverrides] A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version's overrides.
  /// [key] The identifier for this object. Format specified above.
  /// [version] The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service's version.
  MetastoreServiceHiveMetastoreConfigAuxiliaryVersion({
    this.configOverrides,
    required this.key,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configOverrides': ?configOverrides,
      'key': key,
      'version': version,
    };
  }

  factory MetastoreServiceHiveMetastoreConfigAuxiliaryVersion.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceHiveMetastoreConfigAuxiliaryVersion(
      configOverrides: map['configOverrides'] == null ? null : ((map['configOverrides'] as Map).cast<String, String>()).input(),
      key: (map['key'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}


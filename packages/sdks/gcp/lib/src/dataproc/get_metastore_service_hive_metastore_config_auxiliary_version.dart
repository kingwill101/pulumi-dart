// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version's overrides.
  /// If keys are present in both the auxiliary version's overrides and the primary version's overrides, the value from the auxiliary version's overrides takes precedence.
  final pulumi.Input<Map<String, String>> configOverrides;
  final pulumi.Input<String> key;
  /// The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service's version.
  final pulumi.Input<String> version;

  /// Creates a new [GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion].
  /// [configOverrides] A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version's overrides.
  /// [key] Required.
  /// [version] The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service's version.
  GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion({
    required this.configOverrides,
    required this.key,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configOverrides': configOverrides,
      'key': key,
      'version': version,
    };
  }

  factory GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion(
      configOverrides: pulumi.Input.fromValue((map['configOverrides'] as Map).cast<String, String>()),
      key: pulumi.Input.fromValue(map['key'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_encryption_config.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  final String databaseDialect;
  final List<String> ddls;
  final String defaultTimeZone;
  final bool deletionProtection;
  final bool enableDropProtection;
  final List<GetDatabaseEncryptionConfig> encryptionConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  final String name;
  final String? project;
  final String state;
  final String versionRetentionPeriod;

  /// Creates a new [GetDatabaseResult].
  /// [databaseDialect] Required.
  /// [ddls] Required.
  /// [defaultTimeZone] Required.
  /// [deletionProtection] Required.
  /// [enableDropProtection] Required.
  /// [encryptionConfigs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [state] Required.
  /// [versionRetentionPeriod] Required.
  const GetDatabaseResult({
    required this.databaseDialect,
    required this.ddls,
    required this.defaultTimeZone,
    required this.deletionProtection,
    required this.enableDropProtection,
    required this.encryptionConfigs,
    required this.id,
    required this.instance,
    required this.name,
    this.project,
    required this.state,
    required this.versionRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseDialect': databaseDialect,
      'ddls': ddls,
      'defaultTimeZone': defaultTimeZone,
      'deletionProtection': deletionProtection,
      'enableDropProtection': enableDropProtection,
      'encryptionConfigs': pulumi.Input.encodeList<GetDatabaseEncryptionConfig, Map<String, dynamic>>(encryptionConfigs, (value) => value.toMap()),
      'id': id,
      'instance': instance,
      'name': name,
      'project': ?project,
      'state': state,
      'versionRetentionPeriod': versionRetentionPeriod,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      databaseDialect: map['databaseDialect'] as String,
      ddls: (map['ddls'] as List).cast<String>(),
      defaultTimeZone: map['defaultTimeZone'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      enableDropProtection: map['enableDropProtection'] as bool,
      encryptionConfigs: pulumi.Input.decodeList<GetDatabaseEncryptionConfig>(map['encryptionConfigs']!, (value) => GetDatabaseEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instance: map['instance'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: map['state'] as String,
      versionRetentionPeriod: map['versionRetentionPeriod'] as String,
    );
  }
}


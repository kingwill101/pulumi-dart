// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_encryption_config.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  final String? databaseDialect;
  final List<String>? ddls;
  final String? defaultTimeZone;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final bool? enableDropProtection;
  final List<GetDatabaseEncryptionConfig>? encryptionConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instance;
  final String? name;
  final String? project;
  final String? state;
  final String? versionRetentionPeriod;

  /// Creates a new [GetDatabaseResult].
  /// [databaseDialect] Optional.
  /// [ddls] Optional.
  /// [defaultTimeZone] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [enableDropProtection] Optional.
  /// [encryptionConfigs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [state] Optional.
  /// [versionRetentionPeriod] Optional.
  const GetDatabaseResult({
    this.databaseDialect,
    this.ddls,
    this.defaultTimeZone,
    this.deletionPolicy,
    this.deletionProtection,
    this.enableDropProtection,
    this.encryptionConfigs,
    this.id,
    this.instance,
    this.name,
    this.project,
    this.state,
    this.versionRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseDialect': ?databaseDialect,
      'ddls': ?ddls,
      'defaultTimeZone': ?defaultTimeZone,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'enableDropProtection': ?enableDropProtection,
      'encryptionConfigs': ?(() { final guardedValue = encryptionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseEncryptionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instance': ?instance,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'versionRetentionPeriod': ?versionRetentionPeriod,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      databaseDialect: (() { final guardedValue = map['databaseDialect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ddls: (() { final guardedValue = map['ddls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      defaultTimeZone: (() { final guardedValue = map['defaultTimeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDropProtection: (() { final guardedValue = map['enableDropProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptionConfigs: (() { final guardedValue = map['encryptionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseEncryptionConfig>(guardedValue, (value) => GetDatabaseEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionRetentionPeriod: (() { final guardedValue = map['versionRetentionPeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

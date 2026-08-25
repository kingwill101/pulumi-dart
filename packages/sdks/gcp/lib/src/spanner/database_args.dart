// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_encryption_config.dart';

/// {@template pulumi_spanner_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_spanner_database_database_args_doc}
class DatabaseArgs {
  /// The dialect of the Cloud Spanner Database.
  /// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
  /// Possible values are: `GOOGLE_STANDARD_SQL`, `POSTGRESQL`.
  final pulumi.Input<String?>? databaseDialect;
  /// An optional list of DDL statements to run inside the database. Statements can create
  /// tables, indexes, etc.
  /// During creation these statements execute atomically with the creation of the database
  /// and if there is an error in any statement, the database is not created.
  /// Terraform does not perform drift detection on this field and assumes that the values
  /// recorded in state are accurate. Limited updates to this field are supported, and
  /// newly appended DDL statements can be executed in an update. However, modifications
  /// to prior statements will create a plan that marks the resource for recreation.
  final pulumi.Input<List<String>?>? ddls;
  /// The default time zone for the database. The default time zone must be a valid name
  /// from the tz database. Default value is "America/Los_angeles".
  final pulumi.Input<String?>? defaultTimeZone;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` that would delete the instance will fail.
  final pulumi.Input<bool?>? deletionProtection;
  /// Whether drop protection is enabled for this database. Defaults to false.
  /// Drop protection is different from
  /// the "deletionProtection" attribute in the following ways:
  /// (1) "deletionProtection" only protects the database from deletions in Terraform.
  /// whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
  /// (2) Setting "enableDropProtection" to true also prevents the deletion of the parent instance containing the database.
  /// "deletionProtection" attribute does not provide protection against the deletion of the parent instance.
  final pulumi.Input<bool?>? enableDropProtection;
  /// Encryption configuration for the database
  /// Structure is documented below.
  final pulumi.Input<DatabaseEncryptionConfig?>? encryptionConfig;
  /// The instance to create the database on.
  final pulumi.Input<String> instance;
  /// A unique identifier for the database, which cannot be changed after the
  /// instance is created. Values are of the form `[a-z][-_a-z0-9]*[a-z0-9]`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The retention period for the database. The retention period must be between 1 hour
  /// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
  /// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
  /// If this property is used, you must avoid adding new DDL statements to `ddl` that
  /// update the database's version_retention_period.
  final pulumi.Input<String?>? versionRetentionPeriod;

  /// Creates a new [DatabaseArgs].
  /// [databaseDialect] The dialect of the Cloud Spanner Database.
  /// [ddls] An optional list of DDL statements to run inside the database. Statements can create
  /// [defaultTimeZone] The default time zone for the database. The default time zone must be a valid name
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// [enableDropProtection] Whether drop protection is enabled for this database. Defaults to false.
  /// [encryptionConfig] Encryption configuration for the database
  /// [instance] The instance to create the database on.
  /// [name] A unique identifier for the database, which cannot be changed after the
  /// [project] The ID of the project in which the resource belongs.
  /// [versionRetentionPeriod] The retention period for the database. The retention period must be between 1 hour
  const DatabaseArgs({
    this.databaseDialect,
    this.ddls,
    this.defaultTimeZone,
    this.deletionPolicy,
    this.deletionProtection,
    this.enableDropProtection,
    this.encryptionConfig,
    required this.instance,
    this.name,
    this.project,
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
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'instance': instance,
      'name': ?name,
      'project': ?project,
      'versionRetentionPeriod': ?versionRetentionPeriod,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      databaseDialect: (() { final guardedValue = map['databaseDialect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ddls: (() { final guardedValue = map['ddls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultTimeZone: (() { final guardedValue = map['defaultTimeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDropProtection: (() { final guardedValue = map['enableDropProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionRetentionPeriod: (() { final guardedValue = map['versionRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

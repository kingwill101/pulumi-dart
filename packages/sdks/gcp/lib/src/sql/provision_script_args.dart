// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_provision_script_provision_script_args_doc}
/// The set of arguments for ProvisionScript.
/// {@endtemplate}
/// {@macro pulumi_sql_provision_script_provision_script_args_doc}
class ProvisionScriptArgs {
  /// The name of the database to which Terraform connects. Changing
  /// this forces Terraform to connect to the new database and run the script. This argument is
  /// required for Postgres instances. It's optional for MySQL, but some of your queries may require
  /// a database. You can create and use a database in the script or explicitly reference a
  /// google_sql_database.
  final pulumi.Input<String>? database;
  /// The deletion policy for the resources created by the script. The
  /// default is "ABANDON". It must be "ABANDON" to allow Terraform to abandon the resources. If you
  /// want to delete resources, add statements in the script such as `drop … if exists`.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the provision script.
  final pulumi.Input<String>? description;
  /// The name of the Cloud SQL instance. Changing this forces the script to
  /// be run on the new instance.
  final pulumi.Input<String> instance;
  /// The resource name of the Secret Manager secret storing the
  /// password. The secret should be a regional secret and stored in the exact same region as the Cloud
  /// SQL instance. Follow https://docs.cloud.google.com/secret-manager/regional-secrets/create-regional-secret.
  /// When user and passwordSecretVersion are provided, the script is run using this user.
  /// Otherwise, the script is run using the identity account used to apply your Terraform config.
  /// Changing this field forces the script to be run again.
  final pulumi.Input<String>? passwordSecretVersion;
  /// The ID of the project in which the resource belongs. If it is not provided,
  /// the provider project is used.
  final pulumi.Input<String>? project;
  /// The SQL script to provision database resources. Its execution time limit
  /// is 30 s and it will be canceled if it takes longer than 30 s. You can use patterns like
  /// `create if not exists …` or `if not exists (select …) then … end if` to avoid existence-related
  /// errors. If it's not possible to make a statement idempotent, you can run it once and then remove
  /// it from this script.
  final pulumi.Input<String> script;
  /// The name of the built-in database user to authenticate as. For MySQL user,
  /// omit '@' and the hostname. The user should exist as a built-in user in the database.
  /// When `user` and `passwordSecretVersion` are provided, the script is run using this user.
  /// Otherwise, the script is run using the identity account used to apply your Terraform config.
  /// Changing this forces the script to be run using the new user.
  final pulumi.Input<String>? user;

  /// Creates a new [ProvisionScriptArgs].
  /// [database] The name of the database to which Terraform connects. Changing
  /// [deletionPolicy] The deletion policy for the resources created by the script. The
  /// [description] The description of the provision script.
  /// [instance] The name of the Cloud SQL instance. Changing this forces the script to
  /// [passwordSecretVersion] The resource name of the Secret Manager secret storing the
  /// [project] The ID of the project in which the resource belongs. If it is not provided,
  /// [script] The SQL script to provision database resources. Its execution time limit
  /// [user] The name of the built-in database user to authenticate as. For MySQL user,
  const ProvisionScriptArgs({
    this.database,
    this.deletionPolicy,
    this.description,
    required this.instance,
    this.passwordSecretVersion,
    this.project,
    required this.script,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'instance': instance,
      'passwordSecretVersion': ?passwordSecretVersion,
      'project': ?project,
      'script': script,
      'user': ?user,
    };
  }

  factory ProvisionScriptArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionScriptArgs(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: pulumi.Input.fromValue(map['script'] as String),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

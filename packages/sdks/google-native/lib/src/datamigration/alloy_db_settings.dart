// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alloy_db_settings_database_version.dart';
import 'encryption_config.dart';
import 'primary_instance_settings.dart';
import 'user_password.dart';

/// Settings for creating an AlloyDB cluster.
class AlloyDbSettings {
  /// Optional. The database engine major version. This is an optional field. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final pulumi.Input<AlloyDbSettingsDatabaseVersion>? databaseVersion;
  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// Input only. Initial user to setup during cluster creation. Required.
  final pulumi.Input<UserPassword> initialUser;
  /// Labels for the AlloyDB cluster created by DMS. An object containing a list of 'key', 'value' pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<PrimaryInstanceSettings>? primaryInstanceSettings;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project_number}/global/networks/{network_id}". This is required to create a cluster.
  final pulumi.Input<String> vpcNetwork;

  /// Creates a new [AlloyDbSettings].
  /// [databaseVersion] Optional. The database engine major version. This is an optional field. If a database version is not supplied at cluster creation time, then a default database version will be used.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  /// [initialUser] Input only. Initial user to setup during cluster creation. Required.
  /// [labels] Labels for the AlloyDB cluster created by DMS. An object containing a list of 'key', 'value' pairs.
  /// [primaryInstanceSettings] Optional.
  /// [vpcNetwork] The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project_number}/global/networks/{network_id}". This is required to create a cluster.
  AlloyDbSettings({
    this.databaseVersion,
    this.encryptionConfig,
    required this.initialUser,
    this.labels,
    this.primaryInstanceSettings,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseVersion': ?pulumi.Input.mapOptionalInputValue<AlloyDbSettingsDatabaseVersion, String>(databaseVersion, (value) => value.value),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'initialUser': pulumi.Input.mapInputValue<UserPassword, Map<String, dynamic>>(initialUser, (value) => value.toMap()),
      'labels': ?labels,
      'primaryInstanceSettings': ?pulumi.Input.mapOptionalInputValue<PrimaryInstanceSettings, Map<String, dynamic>>(primaryInstanceSettings, (value) => value.toMap()),
      'vpcNetwork': vpcNetwork,
    };
  }

  factory AlloyDbSettings.fromMap(Map<String, dynamic> map) {
    return AlloyDbSettings(
      databaseVersion: map['databaseVersion'] == null ? null : (AlloyDbSettingsDatabaseVersion.fromValue(map['databaseVersion'] as String)).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      initialUser: (UserPassword.fromMap((map['initialUser'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      primaryInstanceSettings: map['primaryInstanceSettings'] == null ? null : (PrimaryInstanceSettings.fromMap((map['primaryInstanceSettings'] as Map).cast<String, dynamic>())).input(),
      vpcNetwork: (map['vpcNetwork'] as String).input(),
    );
  }
}


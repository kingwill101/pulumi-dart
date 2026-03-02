// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response.dart';
import 'primary_instance_settings_response.dart';
import 'user_password_response.dart';

/// Settings for creating an AlloyDB cluster.
class AlloyDbSettingsResponse {
  /// Optional. The database engine major version. This is an optional field. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final pulumi.Input<String> databaseVersion;
  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfigResponse> encryptionConfig;
  /// Input only. Initial user to setup during cluster creation. Required.
  final pulumi.Input<UserPasswordResponse> initialUser;
  /// Labels for the AlloyDB cluster created by DMS. An object containing a list of 'key', 'value' pairs.
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<PrimaryInstanceSettingsResponse> primaryInstanceSettings;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project_number}/global/networks/{network_id}". This is required to create a cluster.
  final pulumi.Input<String> vpcNetwork;

  /// Creates a new [AlloyDbSettingsResponse].
  /// [databaseVersion] Optional. The database engine major version. This is an optional field. If a database version is not supplied at cluster creation time, then a default database version will be used.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  /// [initialUser] Input only. Initial user to setup during cluster creation. Required.
  /// [labels] Labels for the AlloyDB cluster created by DMS. An object containing a list of 'key', 'value' pairs.
  /// [primaryInstanceSettings] Required.
  /// [vpcNetwork] The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project_number}/global/networks/{network_id}". This is required to create a cluster.
  AlloyDbSettingsResponse({
    required this.databaseVersion,
    required this.encryptionConfig,
    required this.initialUser,
    required this.labels,
    required this.primaryInstanceSettings,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseVersion': databaseVersion,
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponse, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'initialUser': pulumi.Input.mapInputValue<UserPasswordResponse, Map<String, dynamic>>(initialUser, (value) => value.toMap()),
      'labels': labels,
      'primaryInstanceSettings': pulumi.Input.mapInputValue<PrimaryInstanceSettingsResponse, Map<String, dynamic>>(primaryInstanceSettings, (value) => value.toMap()),
      'vpcNetwork': vpcNetwork,
    };
  }

  factory AlloyDbSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AlloyDbSettingsResponse(
      databaseVersion: (map['databaseVersion'] as String).input(),
      encryptionConfig: (EncryptionConfigResponse.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      initialUser: (UserPasswordResponse.fromMap((map['initialUser'] as Map).cast<String, dynamic>())).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      primaryInstanceSettings: (PrimaryInstanceSettingsResponse.fromMap((map['primaryInstanceSettings'] as Map).cast<String, dynamic>())).input(),
      vpcNetwork: (map['vpcNetwork'] as String).input(),
    );
  }
}


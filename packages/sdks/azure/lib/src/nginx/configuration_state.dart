// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_config_file.dart';
import 'configuration_protected_file.dart';

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// One or more `config_file` blocks as defined below.
  final pulumi.Input<List<ConfigurationConfigFile>>? configFiles;
  /// The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created.
  final pulumi.Input<String>? nginxDeploymentId;
  /// Specifies the package data for this configuration.
  final pulumi.Input<String>? packageData;
  /// One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified.
  final pulumi.Input<List<ConfigurationProtectedFile>>? protectedFiles;
  /// Specifies the root file path of this Nginx Configuration.
  final pulumi.Input<String>? rootFile;

  /// Creates a new [ConfigurationState].
  /// [configFiles] One or more `config_file` blocks as defined below.
  /// [nginxDeploymentId] The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created.
  /// [packageData] Specifies the package data for this configuration.
  /// [protectedFiles] One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified.
  /// [rootFile] Specifies the root file path of this Nginx Configuration.
  ConfigurationState({
    this.configFiles,
    this.nginxDeploymentId,
    this.packageData,
    this.protectedFiles,
    this.rootFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFiles': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationConfigFile>, List<Map<String, dynamic>>>(configFiles, (value) => pulumi.Input.encodeList<ConfigurationConfigFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nginxDeploymentId': ?nginxDeploymentId,
      'packageData': ?packageData,
      'protectedFiles': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationProtectedFile>, List<Map<String, dynamic>>>(protectedFiles, (value) => pulumi.Input.encodeList<ConfigurationProtectedFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rootFile': ?rootFile,
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      configFiles: map['configFiles'] == null ? null : (pulumi.Input.decodeList<ConfigurationConfigFile>(map['configFiles']!, (value) => ConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nginxDeploymentId: map['nginxDeploymentId'] == null ? null : (map['nginxDeploymentId']! as String).input(),
      packageData: map['packageData'] == null ? null : (map['packageData']! as String).input(),
      protectedFiles: map['protectedFiles'] == null ? null : (pulumi.Input.decodeList<ConfigurationProtectedFile>(map['protectedFiles']!, (value) => ConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rootFile: map['rootFile'] == null ? null : (map['rootFile']! as String).input(),
    );
  }
}


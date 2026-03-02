// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_config_file.dart';
import 'configuration_protected_file.dart';

/// {@template pulumi_nginx_configuration_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_nginx_configuration_configuration_args_doc}
class ConfigurationArgs {
  /// One or more `config_file` blocks as defined below.
  final pulumi.Input<List<ConfigurationConfigFile>>? configFiles;
  /// The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created.
  final pulumi.Input<String> nginxDeploymentId;
  /// Specifies the package data for this configuration.
  final pulumi.Input<String>? packageData;
  /// One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified.
  final pulumi.Input<List<ConfigurationProtectedFile>>? protectedFiles;
  /// Specifies the root file path of this Nginx Configuration.
  final pulumi.Input<String> rootFile;

  /// Creates a new [ConfigurationArgs].
  /// [configFiles] One or more `config_file` blocks as defined below.
  /// [nginxDeploymentId] The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created.
  /// [packageData] Specifies the package data for this configuration.
  /// [protectedFiles] One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified.
  /// [rootFile] Specifies the root file path of this Nginx Configuration.
  ConfigurationArgs({
    this.configFiles,
    required this.nginxDeploymentId,
    this.packageData,
    this.protectedFiles,
    required this.rootFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFiles': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationConfigFile>, List<Map<String, dynamic>>>(configFiles, (value) => pulumi.Input.encodeList<ConfigurationConfigFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nginxDeploymentId': nginxDeploymentId,
      'packageData': ?packageData,
      'protectedFiles': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationProtectedFile>, List<Map<String, dynamic>>>(protectedFiles, (value) => pulumi.Input.encodeList<ConfigurationProtectedFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rootFile': rootFile,
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      configFiles: map['configFiles'] == null ? null : (pulumi.Input.decodeList<ConfigurationConfigFile>(map['configFiles'], (value) => ConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nginxDeploymentId: (map['nginxDeploymentId'] as String).input(),
      packageData: map['packageData'] == null ? null : (map['packageData'] as String).input(),
      protectedFiles: map['protectedFiles'] == null ? null : (pulumi.Input.decodeList<ConfigurationProtectedFile>(map['protectedFiles'], (value) => ConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rootFile: (map['rootFile'] as String).input(),
    );
  }
}


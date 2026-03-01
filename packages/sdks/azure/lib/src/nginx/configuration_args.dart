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
    pulumi.Output<List<ConfigurationConfigFile>>? configFiles,
    required pulumi.Output<String> nginxDeploymentId,
    pulumi.Output<String>? packageData,
    pulumi.Output<List<ConfigurationProtectedFile>>? protectedFiles,
    required pulumi.Output<String> rootFile,
  }) :
      configFiles = pulumi.Input.asOptionalInput<List<ConfigurationConfigFile>>(configFiles),
      nginxDeploymentId = pulumi.Input.asInput<String>(nginxDeploymentId),
      packageData = pulumi.Input.asOptionalInput<String>(packageData),
      protectedFiles = pulumi.Input.asOptionalInput<List<ConfigurationProtectedFile>>(protectedFiles),
      rootFile = pulumi.Input.asInput<String>(rootFile);

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
      configFiles: map['configFiles'] == null ? null : pulumi.Output.create<List<ConfigurationConfigFile>>(pulumi.Input.decodeList<ConfigurationConfigFile>(map['configFiles'], (value) => ConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>()))),
      nginxDeploymentId: pulumi.Output.create<String>(map['nginxDeploymentId'] as String),
      packageData: map['packageData'] == null ? null : pulumi.Output.create<String>(map['packageData'] as String),
      protectedFiles: map['protectedFiles'] == null ? null : pulumi.Output.create<List<ConfigurationProtectedFile>>(pulumi.Input.decodeList<ConfigurationProtectedFile>(map['protectedFiles'], (value) => ConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>()))),
      rootFile: pulumi.Output.create<String>(map['rootFile'] as String),
    );
  }
}


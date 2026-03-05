// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_config_file.dart';
import 'get_configuration_protected_file.dart';

/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// A `config_file` block as defined below.
  final List<GetConfigurationConfigFile> configFiles;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String nginxDeploymentId;
  /// The package data for this configuration.
  final String packageData;
  /// A `protected_file` block as defined below.
  final List<GetConfigurationProtectedFile> protectedFiles;
  /// The root file path of this Nginx Configuration.
  final String rootFile;

  /// Creates a new [GetConfigurationResult].
  /// [configFiles] A `config_file` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nginxDeploymentId] Required.
  /// [packageData] The package data for this configuration.
  /// [protectedFiles] A `protected_file` block as defined below.
  /// [rootFile] The root file path of this Nginx Configuration.
  GetConfigurationResult({
    required this.configFiles,
    required this.id,
    required this.nginxDeploymentId,
    required this.packageData,
    required this.protectedFiles,
    required this.rootFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFiles': pulumi.Input.encodeList<GetConfigurationConfigFile, Map<String, dynamic>>(configFiles, (value) => value.toMap()),
      'id': id,
      'nginxDeploymentId': nginxDeploymentId,
      'packageData': packageData,
      'protectedFiles': pulumi.Input.encodeList<GetConfigurationProtectedFile, Map<String, dynamic>>(protectedFiles, (value) => value.toMap()),
      'rootFile': rootFile,
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      configFiles: pulumi.Input.decodeList<GetConfigurationConfigFile>(map['configFiles']!, (value) => GetConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      nginxDeploymentId: map['nginxDeploymentId'] as String,
      packageData: map['packageData'] as String,
      protectedFiles: pulumi.Input.decodeList<GetConfigurationProtectedFile>(map['protectedFiles']!, (value) => GetConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>())),
      rootFile: map['rootFile'] as String,
    );
  }
}


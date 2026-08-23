// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_config_file.dart';
import 'configuration_protected_file.dart';

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// One or more `configFile` blocks as defined below.
  final pulumi.Input<List<ConfigurationConfigFile>>? configFiles;
  /// The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created.
  final pulumi.Input<String>? nginxDeploymentId;
  /// Specifies the package data for this configuration.
  final pulumi.Input<String>? packageData;
  /// One or more `protectedFile` blocks with sensitive information as defined below. If specified `configFile` must also be specified.
  final pulumi.Input<List<ConfigurationProtectedFile>>? protectedFiles;
  /// Specifies the root file path of this Nginx Configuration.
  final pulumi.Input<String>? rootFile;

  /// Creates a new [ConfigurationState].
  /// [configFiles] One or more `configFile` blocks as defined below.
  /// [nginxDeploymentId] The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created.
  /// [packageData] Specifies the package data for this configuration.
  /// [protectedFiles] One or more `protectedFile` blocks with sensitive information as defined below. If specified `configFile` must also be specified.
  /// [rootFile] Specifies the root file path of this Nginx Configuration.
  const ConfigurationState({
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
      configFiles: (() { final guardedValue = map['configFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationConfigFile>(guardedValue, (value) => ConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nginxDeploymentId: (() { final guardedValue = map['nginxDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageData: (() { final guardedValue = map['packageData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedFiles: (() { final guardedValue = map['protectedFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationProtectedFile>(guardedValue, (value) => ConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rootFile: (() { final guardedValue = map['rootFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_config_file.dart';
import 'get_configuration_protected_file.dart';

/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// A `configFile` block as defined below.
  final List<GetConfigurationConfigFile>? configFiles;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? nginxDeploymentId;
  /// The package data for this configuration.
  final String? packageData;
  /// A `protectedFile` block as defined below.
  final List<GetConfigurationProtectedFile>? protectedFiles;
  /// The root file path of this Nginx Configuration.
  final String? rootFile;

  /// Creates a new [GetConfigurationResult].
  /// [configFiles] A `configFile` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nginxDeploymentId] Optional.
  /// [packageData] The package data for this configuration.
  /// [protectedFiles] A `protectedFile` block as defined below.
  /// [rootFile] The root file path of this Nginx Configuration.
  const GetConfigurationResult({
    this.configFiles,
    this.id,
    this.nginxDeploymentId,
    this.packageData,
    this.protectedFiles,
    this.rootFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFiles': ?(() { final guardedValue = configFiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationConfigFile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'nginxDeploymentId': ?nginxDeploymentId,
      'packageData': ?packageData,
      'protectedFiles': ?(() { final guardedValue = protectedFiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationProtectedFile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rootFile': ?rootFile,
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      configFiles: (() { final guardedValue = map['configFiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationConfigFile>(guardedValue, (value) => GetConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nginxDeploymentId: (() { final guardedValue = map['nginxDeploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageData: (() { final guardedValue = map['packageData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectedFiles: (() { final guardedValue = map['protectedFiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationProtectedFile>(guardedValue, (value) => GetConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>())); })(),
      rootFile: (() { final guardedValue = map['rootFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

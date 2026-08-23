// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'front_end_configuration.dart';
import 'storage_type.dart';

class ArcConfiguration {
  final pulumi.Input<String>? artifactStorageAccessMode;
  final pulumi.Input<String>? artifactStorageClassName;
  final pulumi.Input<String>? artifactStorageMountPath;
  final pulumi.Input<String>? artifactStorageNodeName;
  final pulumi.Input<StorageType>? artifactsStorageType;
  final pulumi.Input<FrontEndConfiguration>? frontEndServiceConfiguration;
  final pulumi.Input<String>? kubeConfig;

  /// Creates a new [ArcConfiguration].
  /// [artifactStorageAccessMode] Optional.
  /// [artifactStorageClassName] Optional.
  /// [artifactStorageMountPath] Optional.
  /// [artifactStorageNodeName] Optional.
  /// [artifactsStorageType] Optional.
  /// [frontEndServiceConfiguration] Optional.
  /// [kubeConfig] Optional.
  const ArcConfiguration({
    this.artifactStorageAccessMode,
    this.artifactStorageClassName,
    this.artifactStorageMountPath,
    this.artifactStorageNodeName,
    this.artifactsStorageType,
    this.frontEndServiceConfiguration,
    this.kubeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorageAccessMode': ?artifactStorageAccessMode,
      'artifactStorageClassName': ?artifactStorageClassName,
      'artifactStorageMountPath': ?artifactStorageMountPath,
      'artifactStorageNodeName': ?artifactStorageNodeName,
      'artifactsStorageType': ?pulumi.Input.mapOptionalInputValue<StorageType, String>(artifactsStorageType, (value) => value.wireValue),
      'frontEndServiceConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontEndConfiguration, Map<String, dynamic>>(frontEndServiceConfiguration, (value) => value.toMap()),
      'kubeConfig': ?kubeConfig,
    };
  }

  factory ArcConfiguration.fromMap(Map<String, dynamic> map) {
    return ArcConfiguration(
      artifactStorageAccessMode: (() { final guardedValue = map['artifactStorageAccessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStorageClassName: (() { final guardedValue = map['artifactStorageClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStorageMountPath: (() { final guardedValue = map['artifactStorageMountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStorageNodeName: (() { final guardedValue = map['artifactStorageNodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactsStorageType: (() { final guardedValue = map['artifactsStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageType.fromValue(guardedValue as String)); })(),
      frontEndServiceConfiguration: (() { final guardedValue = map['frontEndServiceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontEndConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeConfig: (() { final guardedValue = map['kubeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

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
  ArcConfiguration({
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
      'artifactsStorageType': ?pulumi.Input.mapOptionalInputValue<StorageType, String>(artifactsStorageType, (value) => value.value),
      'frontEndServiceConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontEndConfiguration, Map<String, dynamic>>(frontEndServiceConfiguration, (value) => value.toMap()),
      'kubeConfig': ?kubeConfig,
    };
  }

  factory ArcConfiguration.fromMap(Map<String, dynamic> map) {
    return ArcConfiguration(
      artifactStorageAccessMode: map['artifactStorageAccessMode'] == null ? null : (map['artifactStorageAccessMode'] as String).input(),
      artifactStorageClassName: map['artifactStorageClassName'] == null ? null : (map['artifactStorageClassName'] as String).input(),
      artifactStorageMountPath: map['artifactStorageMountPath'] == null ? null : (map['artifactStorageMountPath'] as String).input(),
      artifactStorageNodeName: map['artifactStorageNodeName'] == null ? null : (map['artifactStorageNodeName'] as String).input(),
      artifactsStorageType: map['artifactsStorageType'] == null ? null : (StorageType.fromValue(map['artifactsStorageType'] as String)).input(),
      frontEndServiceConfiguration: map['frontEndServiceConfiguration'] == null ? null : (FrontEndConfiguration.fromMap((map['frontEndServiceConfiguration'] as Map).cast<String, dynamic>())).input(),
      kubeConfig: map['kubeConfig'] == null ? null : (map['kubeConfig'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'front_end_configuration.dart';
import 'storage_type.dart';

class ArcConfiguration {
  final String? artifactStorageAccessMode;
  final String? artifactStorageClassName;
  final String? artifactStorageMountPath;
  final String? artifactStorageNodeName;
  final StorageType? artifactsStorageType;
  final FrontEndConfiguration? frontEndServiceConfiguration;
  final String? kubeConfig;

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
      'artifactsStorageType': ?artifactsStorageType == null ? null : artifactsStorageType!.value,
      'frontEndServiceConfiguration': ?frontEndServiceConfiguration == null ? null : frontEndServiceConfiguration!.toMap(),
      'kubeConfig': ?kubeConfig,
    };
  }

  factory ArcConfiguration.fromMap(Map<String, dynamic> map) {
    return ArcConfiguration(
      artifactStorageAccessMode: map['artifactStorageAccessMode'] == null ? null : map['artifactStorageAccessMode'] as String,
      artifactStorageClassName: map['artifactStorageClassName'] == null ? null : map['artifactStorageClassName'] as String,
      artifactStorageMountPath: map['artifactStorageMountPath'] == null ? null : map['artifactStorageMountPath'] as String,
      artifactStorageNodeName: map['artifactStorageNodeName'] == null ? null : map['artifactStorageNodeName'] as String,
      artifactsStorageType: map['artifactsStorageType'] == null ? null : StorageType.fromValue(map['artifactsStorageType'] as String),
      frontEndServiceConfiguration: map['frontEndServiceConfiguration'] == null ? null : FrontEndConfiguration.fromMap((map['frontEndServiceConfiguration'] as Map).cast<String, dynamic>()),
      kubeConfig: map['kubeConfig'] == null ? null : map['kubeConfig'] as String,
    );
  }
}


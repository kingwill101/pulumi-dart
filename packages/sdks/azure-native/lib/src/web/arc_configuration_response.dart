// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'front_end_configuration_response.dart';

class ArcConfigurationResponse {
  final pulumi.Input<String>? artifactStorageAccessMode;
  final pulumi.Input<String>? artifactStorageClassName;
  final pulumi.Input<String>? artifactStorageMountPath;
  final pulumi.Input<String>? artifactStorageNodeName;
  final pulumi.Input<String>? artifactsStorageType;
  final pulumi.Input<FrontEndConfigurationResponse>? frontEndServiceConfiguration;

  /// Creates a new [ArcConfigurationResponse].
  /// [artifactStorageAccessMode] Optional.
  /// [artifactStorageClassName] Optional.
  /// [artifactStorageMountPath] Optional.
  /// [artifactStorageNodeName] Optional.
  /// [artifactsStorageType] Optional.
  /// [frontEndServiceConfiguration] Optional.
  ArcConfigurationResponse({
    this.artifactStorageAccessMode,
    this.artifactStorageClassName,
    this.artifactStorageMountPath,
    this.artifactStorageNodeName,
    this.artifactsStorageType,
    this.frontEndServiceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorageAccessMode': ?artifactStorageAccessMode,
      'artifactStorageClassName': ?artifactStorageClassName,
      'artifactStorageMountPath': ?artifactStorageMountPath,
      'artifactStorageNodeName': ?artifactStorageNodeName,
      'artifactsStorageType': ?artifactsStorageType,
      'frontEndServiceConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontEndConfigurationResponse, Map<String, dynamic>>(frontEndServiceConfiguration, (value) => value.toMap()),
    };
  }

  factory ArcConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ArcConfigurationResponse(
      artifactStorageAccessMode: map['artifactStorageAccessMode'] == null ? null : (map['artifactStorageAccessMode']! as String).input(),
      artifactStorageClassName: map['artifactStorageClassName'] == null ? null : (map['artifactStorageClassName']! as String).input(),
      artifactStorageMountPath: map['artifactStorageMountPath'] == null ? null : (map['artifactStorageMountPath']! as String).input(),
      artifactStorageNodeName: map['artifactStorageNodeName'] == null ? null : (map['artifactStorageNodeName']! as String).input(),
      artifactsStorageType: map['artifactsStorageType'] == null ? null : (map['artifactsStorageType']! as String).input(),
      frontEndServiceConfiguration: map['frontEndServiceConfiguration'] == null ? null : (FrontEndConfigurationResponse.fromMap((map['frontEndServiceConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


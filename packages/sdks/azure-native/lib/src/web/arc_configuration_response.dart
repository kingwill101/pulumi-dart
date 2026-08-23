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
  const ArcConfigurationResponse({
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
      artifactStorageAccessMode: (() { final guardedValue = map['artifactStorageAccessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStorageClassName: (() { final guardedValue = map['artifactStorageClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStorageMountPath: (() { final guardedValue = map['artifactStorageMountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStorageNodeName: (() { final guardedValue = map['artifactStorageNodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactsStorageType: (() { final guardedValue = map['artifactsStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontEndServiceConfiguration: (() { final guardedValue = map['frontEndServiceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontEndConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

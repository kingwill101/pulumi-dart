// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskDockerStep {
  /// Specifies a map of arguments to be used when executing this step.
  final pulumi.Input<Map<String, String>>? arguments;
  /// Should the image cache be enabled? Defaults to `true`.
  final pulumi.Input<bool>? cacheEnabled;
  /// The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  final pulumi.Input<String> contextAccessToken;
  /// The URL (absolute or relative) of the source context for this step. If the context is an url you can reference a specific branch or folder via `#branch:folder`.
  final pulumi.Input<String> contextPath;
  /// The Dockerfile path relative to the source context.
  final pulumi.Input<String> dockerfilePath;
  /// Specifies a list of fully qualified image names including the repository and tag.
  final pulumi.Input<List<String>>? imageNames;
  /// Should the image built be pushed to the registry or not? Defaults to `true`.
  final pulumi.Input<bool>? pushEnabled;
  /// Specifies a map of *secret* arguments to be used when executing this step.
  final pulumi.Input<Map<String, String>>? secretArguments;
  /// The name of the target build stage for the docker build.
  final pulumi.Input<String>? target;

  /// Creates a new [RegistryTaskDockerStep].
  /// [arguments] Specifies a map of arguments to be used when executing this step.
  /// [cacheEnabled] Should the image cache be enabled? Defaults to `true`.
  /// [contextAccessToken] The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  /// [contextPath] The URL (absolute or relative) of the source context for this step. If the context is an url you can reference a specific branch or folder via `#branch:folder`.
  /// [dockerfilePath] The Dockerfile path relative to the source context.
  /// [imageNames] Specifies a list of fully qualified image names including the repository and tag.
  /// [pushEnabled] Should the image built be pushed to the registry or not? Defaults to `true`.
  /// [secretArguments] Specifies a map of *secret* arguments to be used when executing this step.
  /// [target] The name of the target build stage for the docker build.
  const RegistryTaskDockerStep({
    this.arguments,
    this.cacheEnabled,
    required this.contextAccessToken,
    required this.contextPath,
    required this.dockerfilePath,
    this.imageNames,
    this.pushEnabled,
    this.secretArguments,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'cacheEnabled': ?cacheEnabled,
      'contextAccessToken': contextAccessToken,
      'contextPath': contextPath,
      'dockerfilePath': dockerfilePath,
      'imageNames': ?imageNames,
      'pushEnabled': ?pushEnabled,
      'secretArguments': ?secretArguments,
      'target': ?target,
    };
  }

  factory RegistryTaskDockerStep.fromMap(Map<String, dynamic> map) {
    return RegistryTaskDockerStep(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cacheEnabled: (() { final guardedValue = map['cacheEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      contextAccessToken: pulumi.Input.fromValue(map['contextAccessToken'] as String),
      contextPath: pulumi.Input.fromValue(map['contextPath'] as String),
      dockerfilePath: pulumi.Input.fromValue(map['dockerfilePath'] as String),
      imageNames: (() { final guardedValue = map['imageNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pushEnabled: (() { final guardedValue = map['pushEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretArguments: (() { final guardedValue = map['secretArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

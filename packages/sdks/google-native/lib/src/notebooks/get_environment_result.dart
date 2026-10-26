// ignore_for_file: unused_element, unnecessary_cast

import 'container_image_response.dart';
import 'vm_image_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Use a container image to start the notebook instance.
  final ContainerImageResponse? containerImage;
  /// The time at which this environment was created.
  final String? createTime;
  /// A brief description of this environment.
  final String? description;
  /// Display name of this environment for the UI.
  final String? displayName;
  /// Name of this environment. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`
  final String? name;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  final String? postStartupScript;
  /// Use a Compute Engine VM image to start the notebook instance.
  final VmImageResponse? vmImage;

  /// Creates a new [GetEnvironmentResult].
  /// [containerImage] Use a container image to start the notebook instance.
  /// [createTime] The time at which this environment was created.
  /// [description] A brief description of this environment.
  /// [displayName] Display name of this environment for the UI.
  /// [name] Name of this environment. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  const GetEnvironmentResult({
    this.containerImage,
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.postStartupScript,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage': ?containerImage?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'postStartupScript': ?postStartupScript,
      'vmImage': ?vmImage?.toMap(),
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      postStartupScript: (() { final guardedValue = map['postStartupScript']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return VmImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

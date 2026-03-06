// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'vm_image.dart';

/// {@template pulumi_notebooks_v1_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_environment_args_doc}
class EnvironmentArgs {
  /// Use a container image to start the notebook instance.
  final pulumi.Input<ContainerImage>? containerImage;
  /// A brief description of this environment.
  final pulumi.Input<String>? description;
  /// Display name of this environment for the UI.
  final pulumi.Input<String>? displayName;
  /// Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  final pulumi.Input<String>? postStartupScript;
  final pulumi.Input<String>? project;
  /// Use a Compute Engine VM image to start the notebook instance.
  final pulumi.Input<VmImage>? vmImage;

  /// Creates a new [EnvironmentArgs].
  /// [containerImage] Use a container image to start the notebook instance.
  /// [description] A brief description of this environment.
  /// [displayName] Display name of this environment for the UI.
  /// [environmentId] Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.
  /// [location] Optional.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  /// [project] Optional.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  const EnvironmentArgs({
    this.containerImage,
    this.description,
    this.displayName,
    required this.environmentId,
    this.location,
    this.postStartupScript,
    this.project,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage': ?pulumi.Input.mapOptionalInputValue<ContainerImage, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'environmentId': environmentId,
      'location': ?location,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'vmImage': ?pulumi.Input.mapOptionalInputValue<VmImage, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postStartupScript: (() { final guardedValue = map['postStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


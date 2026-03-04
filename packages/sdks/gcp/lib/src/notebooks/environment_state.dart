// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_image.dart';
import 'environment_vm_image.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentContainerImage>? containerImage;

  /// Instance creation time
  final pulumi.Input<String>? createTime;

  /// A brief description of this environment.
  final pulumi.Input<String>? description;

  /// Display name of this environment for the UI.
  final pulumi.Input<String>? displayName;

  /// A reference to the zone where the machine resides.
  final pulumi.Input<String>? location;

  /// The name specified for the Environment instance.
  /// Format: projects/{project_id}/locations/{location}/environments/{environmentId}
  final pulumi.Input<String>? name;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up.
  /// The path must be a URL or Cloud Storage path. Example: "gs://path-to-file/file-name"
  final pulumi.Input<String>? postStartupScript;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentVmImage>? vmImage;

  /// Creates a new [EnvironmentState].
  /// [containerImage] Use a container image to start the notebook instance.
  /// [createTime] Instance creation time
  /// [description] A brief description of this environment.
  /// [displayName] Display name of this environment for the UI.
  /// [location] A reference to the zone where the machine resides.
  /// [name] The name specified for the Environment instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up.
  /// [project] The ID of the project in which the resource belongs.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  EnvironmentState({
    this.containerImage,
    this.createTime,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.postStartupScript,
    this.project,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentContainerImage,
            Map<String, dynamic>
          >(containerImage, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'vmImage':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentVmImage,
            Map<String, dynamic>
          >(vmImage, (value) => value.toMap()),
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      containerImage: (() {
        final guardedValue = map['containerImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentContainerImage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      postStartupScript: (() {
        final guardedValue = map['postStartupScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmImage: (() {
        final guardedValue = map['vmImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentVmImage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

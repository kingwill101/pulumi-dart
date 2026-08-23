// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_image.dart';
import 'environment_vm_image.dart';

/// {@template pulumi_notebooks_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_notebooks_environment_environment_args_doc}
class EnvironmentArgs {
  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentContainerImage>? containerImage;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A brief description of this environment.
  final pulumi.Input<String>? description;
  /// Display name of this environment for the UI.
  final pulumi.Input<String>? displayName;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String> location;
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

  /// Creates a new [EnvironmentArgs].
  /// [containerImage] Use a container image to start the notebook instance.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A brief description of this environment.
  /// [displayName] Display name of this environment for the UI.
  /// [location] A reference to the zone where the machine resides.
  /// [name] The name specified for the Environment instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up.
  /// [project] The ID of the project in which the resource belongs.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  const EnvironmentArgs({
    this.containerImage,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.location,
    this.name,
    this.postStartupScript,
    this.project,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage': ?pulumi.Input.mapOptionalInputValue<EnvironmentContainerImage, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'name': ?name,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'vmImage': ?pulumi.Input.mapOptionalInputValue<EnvironmentVmImage, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentContainerImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postStartupScript: (() { final guardedValue = map['postStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentVmImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_settings_settings_args_doc}
/// The set of arguments for Settings.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_settings_settings_args_doc}
class SettingsArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Disable Cloud Logging for the Migration Center API.
  /// Users are billed for the logs.
  final pulumi.Input<bool?>? disableCloudLogging;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The preference set used by default for a project.
  final pulumi.Input<String?>? preferenceSet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [SettingsArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disableCloudLogging] Disable Cloud Logging for the Migration Center API.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [preferenceSet] The preference set used by default for a project.
  /// [project] The ID of the project in which the resource belongs.
  const SettingsArgs({
    this.deletionPolicy,
    this.disableCloudLogging,
    required this.location,
    this.preferenceSet,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'disableCloudLogging': ?disableCloudLogging,
      'location': location,
      'preferenceSet': ?preferenceSet,
      'project': ?project,
    };
  }

  factory SettingsArgs.fromMap(Map<String, dynamic> map) {
    return SettingsArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableCloudLogging: (() { final guardedValue = map['disableCloudLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      preferenceSet: (() { final guardedValue = map['preferenceSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

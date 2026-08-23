// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_backup_channel_backup_channel_args_doc}
/// The set of arguments for BackupChannel.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_backup_channel_backup_channel_args_doc}
class BackupChannelArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User specified descriptive string for this BackupChannel.
  final pulumi.Input<String>? description;
  /// The project where Backups are allowed to be stored.
  /// The format is `projects/{project}`.
  /// {project} can be project number or project id.
  final pulumi.Input<String> destinationProject;
  /// Description: A set of custom labels supplied by the user.
  /// A list of key-&gt;value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region of the Backup Channel.
  final pulumi.Input<String> location;
  /// The full name of the BackupChannel Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackupChannelArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User specified descriptive string for this BackupChannel.
  /// [destinationProject] The project where Backups are allowed to be stored.
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Backup Channel.
  /// [name] The full name of the BackupChannel Resource.
  /// [project] The ID of the project in which the resource belongs.
  const BackupChannelArgs({
    this.deletionPolicy,
    this.description,
    required this.destinationProject,
    this.labels,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'destinationProject': destinationProject,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory BackupChannelArgs.fromMap(Map<String, dynamic> map) {
    return BackupChannelArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationProject: pulumi.Input.fromValue(map['destinationProject'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

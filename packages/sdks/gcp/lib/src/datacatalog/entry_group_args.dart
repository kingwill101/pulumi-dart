// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_entry_group_entry_group_args_doc}
/// The set of arguments for EntryGroup.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_entry_group_entry_group_args_doc}
class EntryGroupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  final pulumi.Input<String?>? description;
  /// A short name to identify the entry group, for example, "analytics data - jan 2011".
  final pulumi.Input<String?>? displayName;
  /// The id of the entry group to create. The id must begin with a letter or underscore,
  /// contain only English letters, numbers and underscores, and be at most 64 characters.
  final pulumi.Input<String> entryGroupId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// EntryGroup location region.
  final pulumi.Input<String?>? region;

  /// Creates a new [EntryGroupArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011".
  /// [entryGroupId] The id of the entry group to create. The id must begin with a letter or underscore,
  /// [project] The ID of the project in which the resource belongs.
  /// [region] EntryGroup location region.
  const EntryGroupArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.entryGroupId,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': entryGroupId,
      'project': ?project,
      'region': ?region,
    };
  }

  factory EntryGroupArgs.fromMap(Map<String, dynamic> map) {
    return EntryGroupArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryGroupId: pulumi.Input.fromValue(map['entryGroupId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

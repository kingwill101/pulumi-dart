// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EntryGroup resources.
class EntryGroupState {
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
  final pulumi.Input<String?>? entryGroupId;
  /// The resource name of the entry group in URL format. Example: projects/{project}/locations/{location}/entryGroups/{entryGroupId}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// EntryGroup location region.
  final pulumi.Input<String?>? region;

  /// Creates a new [EntryGroupState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011".
  /// [entryGroupId] The id of the entry group to create. The id must begin with a letter or underscore,
  /// [name] The resource name of the entry group in URL format. Example: projects/{project}/locations/{location}/entryGroups/{entryGroupId}
  /// [project] The ID of the project in which the resource belongs.
  /// [region] EntryGroup location region.
  const EntryGroupState({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.entryGroupId,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': ?entryGroupId,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory EntryGroupState.fromMap(Map<String, dynamic> map) {
    return EntryGroupState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryGroupId: (() { final guardedValue = map['entryGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

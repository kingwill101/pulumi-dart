// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Space resources.
class SpaceState {
  /// Space creation timestamp.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description for the space.
  final pulumi.Input<String?>? description;
  /// Display name for the space.
  final pulumi.Input<String?>? displayName;
  /// Flag to enable Google opinionated shared templates.
  final pulumi.Input<bool?>? enableGcpSharedTemplates;
  /// An existing Google Cloud Storage bucket that you want to use instead of
  /// creating a new bucket during Application Design Center setup. If not
  /// provided, a default bucket is created during setup. The bucket must exist
  /// in the same project as the space. Format: {bucket_name}
  final pulumi.Input<String?>? gcsBucket;
  /// The location of the space.
  final pulumi.Input<String?>? location;
  /// Identifier. The space name.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the space.
  final pulumi.Input<String?>? spaceId;
  /// Input only. Resource Manager tags to bind to the space at creation, as a
  /// map of namespaced tag keys to tag value short names, for example
  /// `{"123/environment" = "production"}`. For more information, see
  /// https://cloud.google.com/resource-manager/docs/tags/tags-overview.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Space update timestamp.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [SpaceState].
  /// [createTime] Space creation timestamp.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description for the space.
  /// [displayName] Display name for the space.
  /// [enableGcpSharedTemplates] Flag to enable Google opinionated shared templates.
  /// [gcsBucket] An existing Google Cloud Storage bucket that you want to use instead of
  /// [location] The location of the space.
  /// [name] Identifier. The space name.
  /// [project] The ID of the project in which the resource belongs.
  /// [spaceId] The ID of the space.
  /// [tags] Input only. Resource Manager tags to bind to the space at creation, as a
  /// [updateTime] Space update timestamp.
  const SpaceState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.enableGcpSharedTemplates,
    this.gcsBucket,
    this.location,
    this.name,
    this.project,
    this.spaceId,
    this.tags,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'enableGcpSharedTemplates': ?enableGcpSharedTemplates,
      'gcsBucket': ?gcsBucket,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'spaceId': ?spaceId,
      'tags': ?tags,
      'updateTime': ?updateTime,
    };
  }

  factory SpaceState.fromMap(Map<String, dynamic> map) {
    return SpaceState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableGcpSharedTemplates: (() { final guardedValue = map['enableGcpSharedTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: (() { final guardedValue = map['spaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

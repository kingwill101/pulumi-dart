// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_designcenter_space_space_args_doc}
/// The set of arguments for Space.
/// {@endtemplate}
/// {@macro pulumi_designcenter_space_space_args_doc}
class SpaceArgs {
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
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the space.
  final pulumi.Input<String> spaceId;
  /// Input only. Resource Manager tags to bind to the space at creation, as a
  /// map of namespaced tag keys to tag value short names, for example
  /// `{"123/environment" = "production"}`. For more information, see
  /// https://cloud.google.com/resource-manager/docs/tags/tags-overview.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SpaceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description for the space.
  /// [displayName] Display name for the space.
  /// [enableGcpSharedTemplates] Flag to enable Google opinionated shared templates.
  /// [gcsBucket] An existing Google Cloud Storage bucket that you want to use instead of
  /// [location] The location of the space.
  /// [project] The ID of the project in which the resource belongs.
  /// [spaceId] The ID of the space.
  /// [tags] Input only. Resource Manager tags to bind to the space at creation, as a
  const SpaceArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.enableGcpSharedTemplates,
    this.gcsBucket,
    required this.location,
    this.project,
    required this.spaceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'enableGcpSharedTemplates': ?enableGcpSharedTemplates,
      'gcsBucket': ?gcsBucket,
      'location': location,
      'project': ?project,
      'spaceId': spaceId,
      'tags': ?tags,
    };
  }

  factory SpaceArgs.fromMap(Map<String, dynamic> map) {
    return SpaceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableGcpSharedTemplates: (() { final guardedValue = map['enableGcpSharedTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: pulumi.Input.fromValue(map['spaceId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

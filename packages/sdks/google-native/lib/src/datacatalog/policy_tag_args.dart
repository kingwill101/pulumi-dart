// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_policy_tag_args_doc}
/// The set of arguments for PolicyTag.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_policy_tag_args_doc}
class PolicyTagArgs {
  /// Description of this policy tag. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  final pulumi.Input<String>? description;
  /// User-defined name of this policy tag. The name can't start or end with spaces and must be unique within the parent taxonomy, contain only Unicode letters, numbers, underscores, dashes and spaces, and be at most 200 bytes long when encoded in UTF-8.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  /// Resource name of this policy tag's parent policy tag. If empty, this is a top level tag. If not set, defaults to an empty string. For example, for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag, and, for "Geolocation", this field is empty.
  final pulumi.Input<String>? parentPolicyTag;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [PolicyTagArgs].
  /// [description] Description of this policy tag. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  /// [displayName] User-defined name of this policy tag. The name can't start or end with spaces and must be unique within the parent taxonomy, contain only Unicode letters, numbers, underscores, dashes and spaces, and be at most 200 bytes long when encoded in UTF-8.
  /// [location] Optional.
  /// [parentPolicyTag] Resource name of this policy tag's parent policy tag. If empty, this is a top level tag. If not set, defaults to an empty string. For example, for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag, and, for "Geolocation", this field is empty.
  /// [project] Optional.
  /// [taxonomyId] Required.
  PolicyTagArgs({
    this.description,
    required this.displayName,
    this.location,
    this.parentPolicyTag,
    this.project,
    required this.taxonomyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'location': ?location,
      'parentPolicyTag': ?parentPolicyTag,
      'project': ?project,
      'taxonomyId': taxonomyId,
    };
  }

  factory PolicyTagArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTagArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      parentPolicyTag: map['parentPolicyTag'] == null ? null : (map['parentPolicyTag']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      taxonomyId: (map['taxonomyId'] as String).input(),
    );
  }
}


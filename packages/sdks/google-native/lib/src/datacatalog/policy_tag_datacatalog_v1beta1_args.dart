// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_policy_tag_datacatalog_v1beta1_args_doc}
/// The set of arguments for PolicyTag.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_policy_tag_datacatalog_v1beta1_args_doc}
class PolicyTagDatacatalogV1beta1Args {
  /// Description of this policy tag. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description. If not set, defaults to an empty description.
  final pulumi.Input<String>? description;
  /// User defined name of this policy tag. It must: be unique within the parent taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  /// Resource name of this policy tag's parent policy tag (e.g. for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag). If empty, it means this policy tag is a top level policy tag (e.g. this field is empty for the "Geolocation" policy tag in the example above). If not set, defaults to an empty string.
  final pulumi.Input<String>? parentPolicyTag;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [PolicyTagDatacatalogV1beta1Args].
  /// [description] Description of this policy tag. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description. If not set, defaults to an empty description.
  /// [displayName] User defined name of this policy tag. It must: be unique within the parent taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  /// [location] Optional.
  /// [parentPolicyTag] Resource name of this policy tag's parent policy tag (e.g. for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag). If empty, it means this policy tag is a top level policy tag (e.g. this field is empty for the "Geolocation" policy tag in the example above). If not set, defaults to an empty string.
  /// [project] Optional.
  /// [taxonomyId] Required.
  PolicyTagDatacatalogV1beta1Args({
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

  factory PolicyTagDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return PolicyTagDatacatalogV1beta1Args(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      parentPolicyTag: map['parentPolicyTag'] == null ? null : (map['parentPolicyTag'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      taxonomyId: (map['taxonomyId'] as String).input(),
    );
  }
}


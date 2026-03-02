// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'taxonomy_activated_policy_types_item.dart';

/// {@template pulumi_datacatalog_v1_taxonomy_args_doc}
/// The set of arguments for Taxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_taxonomy_args_doc}
class TaxonomyArgs {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  final pulumi.Input<List<TaxonomyActivatedPolicyTypesItem>>? activatedPolicyTypes;
  /// Optional. Description of this taxonomy. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  final pulumi.Input<String>? description;
  /// User-defined name of this taxonomy. The name can't start or end with spaces, must contain only Unicode letters, numbers, underscores, dashes, and spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [TaxonomyArgs].
  /// [activatedPolicyTypes] Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  /// [description] Optional. Description of this taxonomy. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  /// [displayName] User-defined name of this taxonomy. The name can't start or end with spaces, must contain only Unicode letters, numbers, underscores, dashes, and spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  /// [location] Optional.
  /// [project] Optional.
  TaxonomyArgs({
    this.activatedPolicyTypes,
    this.description,
    required this.displayName,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?pulumi.Input.mapOptionalInputValue<List<TaxonomyActivatedPolicyTypesItem>, List<String>>(activatedPolicyTypes, (value) => pulumi.Input.encodeList<TaxonomyActivatedPolicyTypesItem, String>(value, (value) => value.value)),
      'description': ?description,
      'displayName': displayName,
      'location': ?location,
      'project': ?project,
    };
  }

  factory TaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return TaxonomyArgs(
      activatedPolicyTypes: map['activatedPolicyTypes'] == null ? null : (pulumi.Input.decodeList<TaxonomyActivatedPolicyTypesItem>(map['activatedPolicyTypes'], (value) => TaxonomyActivatedPolicyTypesItem.fromValue(value as String))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


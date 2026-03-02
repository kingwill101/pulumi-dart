// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Taxonomy resources.
class TaxonomyState {
  /// A list of policy types that are activated for this taxonomy. If not set,
  /// defaults to an empty list.
  /// Each value may be one of: `POLICY_TYPE_UNSPECIFIED`, `FINE_GRAINED_ACCESS_CONTROL`.
  final pulumi.Input<List<String>>? activatedPolicyTypes;
  /// Description of this taxonomy. It must: contain only unicode characters,
  /// tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
  /// long when encoded in UTF-8. If not set, defaults to an empty description.
  final pulumi.Input<String>? description;
  /// User defined name of this taxonomy.
  /// The taxonomy display name must be unique within an organization.
  /// It must: contain only unicode letters, numbers, underscores, dashes
  /// and spaces; not start or end with spaces; and be at most 200 bytes
  /// long when encoded in UTF-8.
  final pulumi.Input<String>? displayName;
  /// Resource name of this taxonomy, whose format is:
  /// "projects/{project}/locations/{region}/taxonomies/{taxonomy}".
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Taxonomy location region.
  final pulumi.Input<String>? region;

  /// Creates a new [TaxonomyState].
  /// [activatedPolicyTypes] A list of policy types that are activated for this taxonomy. If not set,
  /// [description] Description of this taxonomy. It must: contain only unicode characters,
  /// [displayName] User defined name of this taxonomy.
  /// [name] Resource name of this taxonomy, whose format is:
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Taxonomy location region.
  TaxonomyState({
    this.activatedPolicyTypes,
    this.description,
    this.displayName,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?activatedPolicyTypes,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory TaxonomyState.fromMap(Map<String, dynamic> map) {
    return TaxonomyState(
      activatedPolicyTypes: map['activatedPolicyTypes'] == null ? null : ((map['activatedPolicyTypes']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}


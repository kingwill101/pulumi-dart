// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTaxonomy.
class GetTaxonomyResult {
  /// A list of policy types activated for this taxonomy.
  final List<String> activatedPolicyTypes;
  /// The description of the taxonomy.
  final String description;
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The full resource name of the taxonomy.
  final String name;
  final String project;
  final String region;

  /// Creates a new [GetTaxonomyResult].
  /// [activatedPolicyTypes] A list of policy types activated for this taxonomy.
  /// [description] The description of the taxonomy.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The full resource name of the taxonomy.
  /// [project] Required.
  /// [region] Required.
  const GetTaxonomyResult({
    required this.activatedPolicyTypes,
    required this.description,
    required this.displayName,
    required this.id,
    required this.name,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': activatedPolicyTypes,
      'description': description,
      'displayName': displayName,
      'id': id,
      'name': name,
      'project': project,
      'region': region,
    };
  }

  factory GetTaxonomyResult.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyResult(
      activatedPolicyTypes: (map['activatedPolicyTypes'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}

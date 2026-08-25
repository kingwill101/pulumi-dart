// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTaxonomy.
class GetTaxonomyResult {
  /// A list of policy types activated for this taxonomy.
  final List<String>? activatedPolicyTypes;
  /// The description of the taxonomy.
  final String? description;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The full resource name of the taxonomy.
  final String? name;
  final String? project;
  final String? region;

  /// Creates a new [GetTaxonomyResult].
  /// [activatedPolicyTypes] A list of policy types activated for this taxonomy.
  /// [description] The description of the taxonomy.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The full resource name of the taxonomy.
  /// [project] Optional.
  /// [region] Optional.
  const GetTaxonomyResult({
    this.activatedPolicyTypes,
    this.description,
    this.displayName,
    this.id,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?activatedPolicyTypes,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetTaxonomyResult.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyResult(
      activatedPolicyTypes: (() { final guardedValue = map['activatedPolicyTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

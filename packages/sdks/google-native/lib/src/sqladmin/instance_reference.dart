// ignore_for_file: unused_element, unnecessary_cast


/// Reference to another Cloud SQL instance.
class InstanceReference {
  /// The name of the Cloud SQL instance being referenced. This does not include the project ID.
  final String? name;
  /// The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  final String? project;
  /// The region of the Cloud SQL instance being referenced.
  final String? region;

  /// Creates a new [InstanceReference].
  /// [name] The name of the Cloud SQL instance being referenced. This does not include the project ID.
  /// [project] The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  /// [region] The region of the Cloud SQL instance being referenced.
  InstanceReference({
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory InstanceReference.fromMap(Map<String, dynamic> map) {
    return InstanceReference(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}


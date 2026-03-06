// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabase.
class GetDatabaseResult {
  final String charset;
  final String collation;
  final String deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  final String name;
  final String? project;
  final String selfLink;

  /// Creates a new [GetDatabaseResult].
  /// [charset] Required.
  /// [collation] Required.
  /// [deletionPolicy] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [selfLink] Required.
  const GetDatabaseResult({
    required this.charset,
    required this.collation,
    required this.deletionPolicy,
    required this.id,
    required this.instance,
    required this.name,
    this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': charset,
      'collation': collation,
      'deletionPolicy': deletionPolicy,
      'id': id,
      'instance': instance,
      'name': name,
      'project': ?project,
      'selfLink': selfLink,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      charset: map['charset'] as String,
      collation: map['collation'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      id: map['id'] as String,
      instance: map['instance'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
    );
  }
}


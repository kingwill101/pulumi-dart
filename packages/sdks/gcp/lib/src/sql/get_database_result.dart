// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabase.
class GetDatabaseResult {
  final String? charset;
  final String? collation;
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instance;
  final String? name;
  final String? project;
  final String? selfLink;

  /// Creates a new [GetDatabaseResult].
  /// [charset] Optional.
  /// [collation] Optional.
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [selfLink] Optional.
  const GetDatabaseResult({
    this.charset,
    this.collation,
    this.deletionPolicy,
    this.id,
    this.instance,
    this.name,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collation': ?collation,
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'instance': ?instance,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      charset: (() { final guardedValue = map['charset']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

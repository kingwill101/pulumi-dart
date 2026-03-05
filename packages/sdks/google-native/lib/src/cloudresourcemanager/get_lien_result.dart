// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLien.
class GetLienResult {
  /// The creation time of this Lien.
  final String createTime;
  /// A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  final String name;
  /// A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  final String origin;
  /// A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  final String parent;
  /// Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  final String reason;
  /// The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  final List<String> restrictions;

  /// Creates a new [GetLienResult].
  /// [createTime] The creation time of this Lien.
  /// [name] A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  /// [origin] A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  /// [parent] A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  /// [reason] Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  /// [restrictions] The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  GetLienResult({
    required this.createTime,
    required this.name,
    required this.origin,
    required this.parent,
    required this.reason,
    required this.restrictions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
      'origin': origin,
      'parent': parent,
      'reason': reason,
      'restrictions': restrictions,
    };
  }

  factory GetLienResult.fromMap(Map<String, dynamic> map) {
    return GetLienResult(
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      origin: map['origin'] as String,
      parent: map['parent'] as String,
      reason: map['reason'] as String,
      restrictions: (map['restrictions'] as List).cast<String>(),
    );
  }
}


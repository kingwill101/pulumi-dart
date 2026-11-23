// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterTokenAuthUser.
class GetClusterTokenAuthUserResult {
  final String? cluster;
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  final String? region;
  final String? state;
  final String? userId;

  /// Creates a new [GetClusterTokenAuthUserResult].
  /// [cluster] Optional.
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [state] Optional.
  /// [userId] Optional.
  const GetClusterTokenAuthUserResult({
    this.cluster,
    this.deletionPolicy,
    this.id,
    this.name,
    this.project,
    this.region,
    this.state,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'state': ?state,
      'userId': ?userId,
    };
  }

  factory GetClusterTokenAuthUserResult.fromMap(Map<String, dynamic> map) {
    return GetClusterTokenAuthUserResult(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

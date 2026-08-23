// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserWorkloadsSecret.
class GetUserWorkloadsSecretResult {
  final Map<String, String> data;
  final String deletionPolicy;
  final String environment;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final String? region;

  /// Creates a new [GetUserWorkloadsSecretResult].
  /// [data] Required.
  /// [deletionPolicy] Required.
  /// [environment] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  /// [region] Optional.
  const GetUserWorkloadsSecretResult({
    required this.data,
    required this.deletionPolicy,
    required this.environment,
    required this.id,
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'deletionPolicy': deletionPolicy,
      'environment': environment,
      'id': id,
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetUserWorkloadsSecretResult.fromMap(Map<String, dynamic> map) {
    return GetUserWorkloadsSecretResult(
      data: (map['data'] as Map).cast<String, String>(),
      deletionPolicy: map['deletionPolicy'] as String,
      environment: map['environment'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

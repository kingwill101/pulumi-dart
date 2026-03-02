// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserWorkloadsConfigMap.
class GetUserWorkloadsConfigMapResult {
  /// The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/configmap/
  final Map<String, String> data;
  final String environment;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final String? region;

  /// Creates a new [GetUserWorkloadsConfigMapResult].
  /// [data] The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// [environment] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  /// [region] Optional.
  GetUserWorkloadsConfigMapResult({
    required this.data,
    required this.environment,
    required this.id,
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'environment': environment,
      'id': id,
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetUserWorkloadsConfigMapResult.fromMap(Map<String, dynamic> map) {
    return GetUserWorkloadsConfigMapResult(
      data: (map['data'] as Map).cast<String, String>(),
      environment: map['environment'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project']! as String,
      region: map['region'] == null ? null : map['region']! as String,
    );
  }
}


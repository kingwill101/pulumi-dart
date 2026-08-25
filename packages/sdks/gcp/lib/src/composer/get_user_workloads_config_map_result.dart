// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserWorkloadsConfigMap.
class GetUserWorkloadsConfigMapResult {
  /// The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/configmap/
  final Map<String, String>? data;
  final String? deletionPolicy;
  final String? environment;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  final String? region;

  /// Creates a new [GetUserWorkloadsConfigMapResult].
  /// [data] The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// [deletionPolicy] Optional.
  /// [environment] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [region] Optional.
  const GetUserWorkloadsConfigMapResult({
    this.data,
    this.deletionPolicy,
    this.environment,
    this.id,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'deletionPolicy': ?deletionPolicy,
      'environment': ?environment,
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetUserWorkloadsConfigMapResult.fromMap(Map<String, dynamic> map) {
    return GetUserWorkloadsConfigMapResult(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

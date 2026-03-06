// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// Project of the current user.
  final String project;
  /// Google Cloud region
  final String region;
  /// Google Cloud zone
  final String? zone;

  /// Creates a new [GetClientConfigResult].
  /// [project] Project of the current user.
  /// [region] Google Cloud region
  /// [zone] Google Cloud zone
  const GetClientConfigResult({
    required this.project,
    required this.region,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'region': region,
      'zone': ?zone,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      project: map['project'] as String,
      region: map['region'] as String,
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}


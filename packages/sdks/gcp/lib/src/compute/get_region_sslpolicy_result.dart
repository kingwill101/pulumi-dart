// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegionSSLPolicy.
class GetRegionSSLPolicyResult {
  final String creationTimestamp;
  final List<String> customFeatures;
  final String description;
  final List<String> enabledFeatures;
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String minTlsVersion;
  final String name;
  final String profile;
  final String? project;
  final String? region;
  final String selfLink;

  /// Creates a new [GetRegionSSLPolicyResult].
  /// [creationTimestamp] Required.
  /// [customFeatures] Required.
  /// [description] Required.
  /// [enabledFeatures] Required.
  /// [fingerprint] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minTlsVersion] Required.
  /// [name] Required.
  /// [profile] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] Required.
  GetRegionSSLPolicyResult({
    required this.creationTimestamp,
    required this.customFeatures,
    required this.description,
    required this.enabledFeatures,
    required this.fingerprint,
    required this.id,
    required this.minTlsVersion,
    required this.name,
    required this.profile,
    this.project,
    this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'customFeatures': customFeatures,
      'description': description,
      'enabledFeatures': enabledFeatures,
      'fingerprint': fingerprint,
      'id': id,
      'minTlsVersion': minTlsVersion,
      'name': name,
      'profile': profile,
      'project': ?project,
      'region': ?region,
      'selfLink': selfLink,
    };
  }

  factory GetRegionSSLPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionSSLPolicyResult(
      creationTimestamp: map['creationTimestamp'] as String,
      customFeatures: (map['customFeatures'] as List).cast<String>(),
      description: map['description'] as String,
      enabledFeatures: (map['enabledFeatures'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      minTlsVersion: map['minTlsVersion'] as String,
      name: map['name'] as String,
      profile: map['profile'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      selfLink: map['selfLink'] as String,
    );
  }
}

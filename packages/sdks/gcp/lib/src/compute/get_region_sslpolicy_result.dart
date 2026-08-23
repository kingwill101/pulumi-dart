// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionSSLPolicy.
class GetRegionSSLPolicyResult {
  final String creationTimestamp;
  /// If the `profile` is `CUSTOM`, these are the custom encryption
  /// ciphers supported by the profile. If the `profile` is *not* `CUSTOM`, this
  /// attribute will be empty.
  final List<String> customFeatures;
  final String deletionPolicy;
  /// Description of this SSL Policy.
  final String description;
  /// The set of enabled encryption ciphers as a result of the policy config
  final List<String> enabledFeatures;
  /// Fingerprint of this resource.
  final String fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The minimum supported TLS version of this policy.
  final String minTlsVersion;
  final String name;
  /// The post-quantum key exchange setting of this policy.
  final String postQuantumKeyExchange;
  /// The Google-curated or custom profile used by this policy.
  final String profile;
  final String? project;
  final String? region;
  /// The URI of the created resource.
  final String selfLink;

  /// Creates a new [GetRegionSSLPolicyResult].
  /// [creationTimestamp] Required.
  /// [customFeatures] If the `profile` is `CUSTOM`, these are the custom encryption
  /// [deletionPolicy] Required.
  /// [description] Description of this SSL Policy.
  /// [enabledFeatures] The set of enabled encryption ciphers as a result of the policy config
  /// [fingerprint] Fingerprint of this resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minTlsVersion] The minimum supported TLS version of this policy.
  /// [name] Required.
  /// [postQuantumKeyExchange] The post-quantum key exchange setting of this policy.
  /// [profile] The Google-curated or custom profile used by this policy.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] The URI of the created resource.
  const GetRegionSSLPolicyResult({
    required this.creationTimestamp,
    required this.customFeatures,
    required this.deletionPolicy,
    required this.description,
    required this.enabledFeatures,
    required this.fingerprint,
    required this.id,
    required this.minTlsVersion,
    required this.name,
    required this.postQuantumKeyExchange,
    required this.profile,
    this.project,
    this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'customFeatures': customFeatures,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'enabledFeatures': enabledFeatures,
      'fingerprint': fingerprint,
      'id': id,
      'minTlsVersion': minTlsVersion,
      'name': name,
      'postQuantumKeyExchange': postQuantumKeyExchange,
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
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      enabledFeatures: (map['enabledFeatures'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      minTlsVersion: map['minTlsVersion'] as String,
      name: map['name'] as String,
      postQuantumKeyExchange: map['postQuantumKeyExchange'] as String,
      profile: map['profile'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSSLPolicy.
class GetSSLPolicyResult {
  final String? creationTimestamp;
  /// If the `profile` is `CUSTOM`, these are the custom encryption
  /// ciphers supported by the profile. If the `profile` is *not* `CUSTOM`, this
  /// attribute will be empty.
  final List<String>? customFeatures;
  final String? deletionPolicy;
  /// Description of this SSL Policy.
  final String? description;
  /// The set of enabled encryption ciphers as a result of the policy config
  final List<String>? enabledFeatures;
  /// Fingerprint of this resource.
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The minimum supported TLS version of this policy.
  final String? minTlsVersion;
  final String? name;
  /// The post-quantum key exchange setting of this policy.
  final String? postQuantumKeyExchange;
  /// The Google-curated or custom profile used by this policy.
  final String? profile;
  final String? project;
  /// The URI of the created resource.
  final String? selfLink;

  /// Creates a new [GetSSLPolicyResult].
  /// [creationTimestamp] Optional.
  /// [customFeatures] If the `profile` is `CUSTOM`, these are the custom encryption
  /// [deletionPolicy] Optional.
  /// [description] Description of this SSL Policy.
  /// [enabledFeatures] The set of enabled encryption ciphers as a result of the policy config
  /// [fingerprint] Fingerprint of this resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minTlsVersion] The minimum supported TLS version of this policy.
  /// [name] Optional.
  /// [postQuantumKeyExchange] The post-quantum key exchange setting of this policy.
  /// [profile] The Google-curated or custom profile used by this policy.
  /// [project] Optional.
  /// [selfLink] The URI of the created resource.
  const GetSSLPolicyResult({
    this.creationTimestamp,
    this.customFeatures,
    this.deletionPolicy,
    this.description,
    this.enabledFeatures,
    this.fingerprint,
    this.id,
    this.minTlsVersion,
    this.name,
    this.postQuantumKeyExchange,
    this.profile,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'customFeatures': ?customFeatures,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'enabledFeatures': ?enabledFeatures,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'postQuantumKeyExchange': ?postQuantumKeyExchange,
      'profile': ?profile,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GetSSLPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSSLPolicyResult(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customFeatures: (() { final guardedValue = map['customFeatures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledFeatures: (() { final guardedValue = map['enabledFeatures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      postQuantumKeyExchange: (() { final guardedValue = map['postQuantumKeyExchange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

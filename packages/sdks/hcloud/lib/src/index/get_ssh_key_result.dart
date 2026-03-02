// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshKey.
class GetSshKeyResult {
  /// Fingerprint of the SSH Key.
  final String? fingerprint;
  /// ID of the SSH Key.
  final int? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Name of the SSH Key.
  final String? name;
  /// Public key of the SSH Key pair.
  final String publicKey;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? selector;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? withSelector;

  /// Creates a new [GetSshKeyResult].
  /// [fingerprint] Fingerprint of the SSH Key.
  /// [id] ID of the SSH Key.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the SSH Key.
  /// [publicKey] Public key of the SSH Key pair.
  /// [selector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  GetSshKeyResult({
    this.fingerprint,
    this.id,
    required this.labels,
    this.name,
    required this.publicKey,
    this.selector,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'id': ?id,
      'labels': labels,
      'name': ?name,
      'publicKey': publicKey,
      'selector': ?selector,
      'withSelector': ?withSelector,
    };
  }

  factory GetSshKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSshKeyResult(
      fingerprint: map['fingerprint'] == null ? null : map['fingerprint']! as String,
      id: map['id'] == null ? null : map['id']! as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name']! as String,
      publicKey: map['publicKey'] as String,
      selector: map['selector'] == null ? null : map['selector']! as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector']! as String,
    );
  }
}


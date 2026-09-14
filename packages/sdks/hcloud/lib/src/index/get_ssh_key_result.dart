// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshKey.
class GetSshKeyResult {
  /// Fingerprint of the SSH Key.
  final String? fingerprint;
  /// ID of the SSH Key.
  final int? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String>? labels;
  /// Name of the SSH Key.
  final String? name;
  /// Public key of the SSH Key pair.
  final String? publicKey;
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
  const GetSshKeyResult({
    this.fingerprint,
    this.id,
    this.labels,
    this.name,
    this.publicKey,
    this.selector,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'publicKey': ?publicKey,
      'selector': ?selector,
      'withSelector': ?withSelector,
    };
  }

  factory GetSshKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSshKeyResult(
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

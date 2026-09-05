// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAgreement.
class GetAgreementResult {
  /// Whether the Marketplace Agreement has been accepted.
  final bool? accepted;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? licenseTextLink;
  final String? offer;
  final String? plan;
  final String? privacyPolicyLink;
  final String? publisher;

  /// Creates a new [GetAgreementResult].
  /// [accepted] Whether the Marketplace Agreement has been accepted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [licenseTextLink] Optional.
  /// [offer] Optional.
  /// [plan] Optional.
  /// [privacyPolicyLink] Optional.
  /// [publisher] Optional.
  const GetAgreementResult({
    this.accepted,
    this.id,
    this.licenseTextLink,
    this.offer,
    this.plan,
    this.privacyPolicyLink,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepted': ?accepted,
      'id': ?id,
      'licenseTextLink': ?licenseTextLink,
      'offer': ?offer,
      'plan': ?plan,
      'privacyPolicyLink': ?privacyPolicyLink,
      'publisher': ?publisher,
    };
  }

  factory GetAgreementResult.fromMap(Map<String, dynamic> map) {
    return GetAgreementResult(
      accepted: (() { final guardedValue = map['accepted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseTextLink: (() { final guardedValue = map['licenseTextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privacyPolicyLink: (() { final guardedValue = map['privacyPolicyLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

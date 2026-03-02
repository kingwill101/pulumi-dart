// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Agreement resources.
class AgreementState {
  final pulumi.Input<String>? licenseTextLink;
  /// The Offer of the Marketplace Image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? offer;
  /// The Plan of the Marketplace Image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? plan;
  final pulumi.Input<String>? privacyPolicyLink;
  /// The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publisher;

  /// Creates a new [AgreementState].
  /// [licenseTextLink] Optional.
  /// [offer] The Offer of the Marketplace Image. Changing this forces a new resource to be created.
  /// [plan] The Plan of the Marketplace Image. Changing this forces a new resource to be created.
  /// [privacyPolicyLink] Optional.
  /// [publisher] The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
  AgreementState({
    this.licenseTextLink,
    this.offer,
    this.plan,
    this.privacyPolicyLink,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseTextLink': ?licenseTextLink,
      'offer': ?offer,
      'plan': ?plan,
      'privacyPolicyLink': ?privacyPolicyLink,
      'publisher': ?publisher,
    };
  }

  factory AgreementState.fromMap(Map<String, dynamic> map) {
    return AgreementState(
      licenseTextLink: map['licenseTextLink'] == null ? null : (map['licenseTextLink'] as String).input(),
      offer: map['offer'] == null ? null : (map['offer'] as String).input(),
      plan: map['plan'] == null ? null : (map['plan'] as String).input(),
      privacyPolicyLink: map['privacyPolicyLink'] == null ? null : (map['privacyPolicyLink'] as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher'] as String).input(),
    );
  }
}


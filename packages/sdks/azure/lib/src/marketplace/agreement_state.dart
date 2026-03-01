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
    pulumi.Output<String>? licenseTextLink,
    pulumi.Output<String>? offer,
    pulumi.Output<String>? plan,
    pulumi.Output<String>? privacyPolicyLink,
    pulumi.Output<String>? publisher,
  }) :
      licenseTextLink = pulumi.Input.asOptionalInput<String>(licenseTextLink),
      offer = pulumi.Input.asOptionalInput<String>(offer),
      plan = pulumi.Input.asOptionalInput<String>(plan),
      privacyPolicyLink = pulumi.Input.asOptionalInput<String>(privacyPolicyLink),
      publisher = pulumi.Input.asOptionalInput<String>(publisher);

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
      licenseTextLink: map['licenseTextLink'] == null ? null : pulumi.Output.create<String>(map['licenseTextLink'] as String),
      offer: map['offer'] == null ? null : pulumi.Output.create<String>(map['offer'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<String>(map['plan'] as String),
      privacyPolicyLink: map['privacyPolicyLink'] == null ? null : pulumi.Output.create<String>(map['privacyPolicyLink'] as String),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<String>(map['publisher'] as String),
    );
  }
}


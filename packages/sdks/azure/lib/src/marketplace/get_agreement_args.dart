// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_get_agreement_get_agreement_args_doc}
/// Arguments for getAgreement.
/// {@endtemplate}
/// {@macro pulumi_marketplace_get_agreement_get_agreement_args_doc}
class GetAgreementArgs {
  /// The Offer of the Marketplace Image.
  final pulumi.Input<String> offer;
  /// The Plan of the Marketplace Image.
  final pulumi.Input<String> plan;
  /// The Publisher of the Marketplace Image.
  final pulumi.Input<String> publisher;

  /// Creates a new [GetAgreementArgs].
  /// [offer] The Offer of the Marketplace Image.
  /// [plan] The Plan of the Marketplace Image.
  /// [publisher] The Publisher of the Marketplace Image.
  const GetAgreementArgs({
    required this.offer,
    required this.plan,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'plan': plan,
      'publisher': publisher,
    };
  }

  factory GetAgreementArgs.fromMap(Map<String, dynamic> map) {
    return GetAgreementArgs(
      offer: pulumi.Input.fromValue(map['offer'] as String),
      plan: pulumi.Input.fromValue(map['plan'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
    );
  }
}


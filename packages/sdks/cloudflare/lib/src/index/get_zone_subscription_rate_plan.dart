// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneSubscriptionRatePlan {
  /// The currency applied to the rate plan subscription.
  final pulumi.Input<String> currency;
  /// Whether this rate plan is managed externally from Cloudflare.
  final pulumi.Input<bool> externallyManaged;
  /// The ID of the rate plan.
  /// Available values: "free", "lite", "pro", "pro*plus", "business", "enterprise", "partners*free", "partners*pro", "partners*business", "partners*enterprise", "partners*ent".
  final pulumi.Input<String> id;
  /// Whether a rate plan is enterprise-based (or newly adopted term contract).
  final pulumi.Input<bool> isContract;
  /// The full name of the rate plan.
  final pulumi.Input<String> publicName;
  /// The scope that this rate plan applies to.
  final pulumi.Input<String> scope;
  /// The list of sets this rate plan applies to. Returns array of strings.
  final pulumi.Input<List<String>> sets;

  /// Creates a new [GetZoneSubscriptionRatePlan].
  /// [currency] The currency applied to the rate plan subscription.
  /// [externallyManaged] Whether this rate plan is managed externally from Cloudflare.
  /// [id] The ID of the rate plan.
  /// [isContract] Whether a rate plan is enterprise-based (or newly adopted term contract).
  /// [publicName] The full name of the rate plan.
  /// [scope] The scope that this rate plan applies to.
  /// [sets] The list of sets this rate plan applies to. Returns array of strings.
  const GetZoneSubscriptionRatePlan({
    required this.currency,
    required this.externallyManaged,
    required this.id,
    required this.isContract,
    required this.publicName,
    required this.scope,
    required this.sets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': currency,
      'externallyManaged': externallyManaged,
      'id': id,
      'isContract': isContract,
      'publicName': publicName,
      'scope': scope,
      'sets': sets,
    };
  }

  factory GetZoneSubscriptionRatePlan.fromMap(Map<String, dynamic> map) {
    return GetZoneSubscriptionRatePlan(
      currency: pulumi.Input.fromValue(map['currency'] as String),
      externallyManaged: pulumi.Input.fromValue(map['externallyManaged'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      isContract: pulumi.Input.fromValue(map['isContract'] as bool),
      publicName: pulumi.Input.fromValue(map['publicName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      sets: pulumi.Input.fromValue((map['sets'] as List).cast<String>()),
    );
  }
}

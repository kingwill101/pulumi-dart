// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_egress_policy_egress_from_source.dart';

class ServicePerimeterEgressPolicyEgressFrom {
  /// Identities can be an individual user, service account, Google group,
  /// or third-party identity. For third-party identity, only single identities
  /// are supported and other identity types are not supported.The v1 identities
  /// that have the prefix user, group and serviceAccount in
  /// https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  final pulumi.Input<List<String>>? identities;
  /// Specifies the type of identities that are allowed access to outside the
  /// perimeter. If left unspecified, then members of `identities` field will
  /// be allowed access.
  /// Possible values are: `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final pulumi.Input<String>? identityType;
  /// Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// Possible values are: `SOURCE_RESTRICTION_UNSPECIFIED`, `SOURCE_RESTRICTION_ENABLED`, `SOURCE_RESTRICTION_DISABLED`.
  final pulumi.Input<String>? sourceRestriction;
  /// Sources that this EgressPolicy authorizes access from.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterEgressPolicyEgressFromSource>>? sources;

  /// Creates a new [ServicePerimeterEgressPolicyEgressFrom].
  /// [identities] Identities can be an individual user, service account, Google group,
  /// [identityType] Specifies the type of identities that are allowed access to outside the
  /// [sourceRestriction] Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// [sources] Sources that this EgressPolicy authorizes access from.
  ServicePerimeterEgressPolicyEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?identities,
      'identityType': ?identityType,
      'sourceRestriction': ?sourceRestriction,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterEgressPolicyEgressFromSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<ServicePerimeterEgressPolicyEgressFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServicePerimeterEgressPolicyEgressFrom.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterEgressPolicyEgressFrom(
      identities: map['identities'] == null ? null : ((map['identities'] as List).cast<String>()).input(),
      identityType: map['identityType'] == null ? null : (map['identityType'] as String).input(),
      sourceRestriction: map['sourceRestriction'] == null ? null : (map['sourceRestriction'] as String).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<ServicePerimeterEgressPolicyEgressFromSource>(map['sources'], (value) => ServicePerimeterEgressPolicyEgressFromSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


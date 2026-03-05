// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expiry_detail_cloudidentity_v1beta1.dart';
import 'restriction_evaluations_cloudidentity_v1beta1.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRoleCloudidentityV1beta1 {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final pulumi.Input<ExpiryDetailCloudidentityV1beta1>? expiryDetail;
  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final pulumi.Input<String>? name;
  /// Evaluations of restrictions applied to parent group on this membership.
  final pulumi.Input<RestrictionEvaluationsCloudidentityV1beta1>? restrictionEvaluations;

  /// Creates a new [MembershipRoleCloudidentityV1beta1].
  /// [expiryDetail] The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  /// [name] The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  /// [restrictionEvaluations] Evaluations of restrictions applied to parent group on this membership.
  MembershipRoleCloudidentityV1beta1({
    this.expiryDetail,
    this.name,
    this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': ?pulumi.Input.mapOptionalInputValue<ExpiryDetailCloudidentityV1beta1, Map<String, dynamic>>(expiryDetail, (value) => value.toMap()),
      'name': ?name,
      'restrictionEvaluations': ?pulumi.Input.mapOptionalInputValue<RestrictionEvaluationsCloudidentityV1beta1, Map<String, dynamic>>(restrictionEvaluations, (value) => value.toMap()),
    };
  }

  factory MembershipRoleCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return MembershipRoleCloudidentityV1beta1(
      expiryDetail: (() { final guardedValue = map['expiryDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpiryDetailCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictionEvaluations: (() { final guardedValue = map['restrictionEvaluations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestrictionEvaluationsCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


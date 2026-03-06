// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expiry_detail.dart';
import 'restriction_evaluations.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRole {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final pulumi.Input<ExpiryDetail>? expiryDetail;
  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final pulumi.Input<String>? name;
  /// Evaluations of restrictions applied to parent group on this membership.
  final pulumi.Input<RestrictionEvaluations>? restrictionEvaluations;

  /// Creates a new [MembershipRole].
  /// [expiryDetail] The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  /// [name] The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  /// [restrictionEvaluations] Evaluations of restrictions applied to parent group on this membership.
  const MembershipRole({
    this.expiryDetail,
    this.name,
    this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': ?pulumi.Input.mapOptionalInputValue<ExpiryDetail, Map<String, dynamic>>(expiryDetail, (value) => value.toMap()),
      'name': ?name,
      'restrictionEvaluations': ?pulumi.Input.mapOptionalInputValue<RestrictionEvaluations, Map<String, dynamic>>(restrictionEvaluations, (value) => value.toMap()),
    };
  }

  factory MembershipRole.fromMap(Map<String, dynamic> map) {
    return MembershipRole(
      expiryDetail: (() { final guardedValue = map['expiryDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpiryDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictionEvaluations: (() { final guardedValue = map['restrictionEvaluations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestrictionEvaluations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


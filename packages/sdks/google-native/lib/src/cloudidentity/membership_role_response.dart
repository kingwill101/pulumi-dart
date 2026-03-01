// ignore_for_file: unused_element, unnecessary_cast

import 'expiry_detail_response.dart';
import 'restriction_evaluations_response.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRoleResponse {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final ExpiryDetailResponse expiryDetail;
  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final String name;
  /// Evaluations of restrictions applied to parent group on this membership.
  final RestrictionEvaluationsResponse restrictionEvaluations;

  /// Creates a new [MembershipRoleResponse].
  /// [expiryDetail] The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  /// [name] The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  /// [restrictionEvaluations] Evaluations of restrictions applied to parent group on this membership.
  MembershipRoleResponse({
    required this.expiryDetail,
    required this.name,
    required this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': expiryDetail.toMap(),
      'name': name,
      'restrictionEvaluations': restrictionEvaluations.toMap(),
    };
  }

  factory MembershipRoleResponse.fromMap(Map<String, dynamic> map) {
    return MembershipRoleResponse(
      expiryDetail: ExpiryDetailResponse.fromMap((map['expiryDetail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      restrictionEvaluations: RestrictionEvaluationsResponse.fromMap((map['restrictionEvaluations'] as Map).cast<String, dynamic>()),
    );
  }
}


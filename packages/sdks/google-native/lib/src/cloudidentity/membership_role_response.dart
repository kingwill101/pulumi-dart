// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expiry_detail_response.dart';
import 'restriction_evaluations_response.dart';

/// A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.
class MembershipRoleResponse {
  /// The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  final pulumi.Input<ExpiryDetailResponse> expiryDetail;
  /// The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  final pulumi.Input<String> name;
  /// Evaluations of restrictions applied to parent group on this membership.
  final pulumi.Input<RestrictionEvaluationsResponse> restrictionEvaluations;

  /// Creates a new [MembershipRoleResponse].
  /// [expiryDetail] The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  /// [name] The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  /// [restrictionEvaluations] Evaluations of restrictions applied to parent group on this membership.
  const MembershipRoleResponse({
    required this.expiryDetail,
    required this.name,
    required this.restrictionEvaluations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDetail': pulumi.Input.mapInputValue<ExpiryDetailResponse, Map<String, dynamic>>(expiryDetail, (value) => value.toMap()),
      'name': name,
      'restrictionEvaluations': pulumi.Input.mapInputValue<RestrictionEvaluationsResponse, Map<String, dynamic>>(restrictionEvaluations, (value) => value.toMap()),
    };
  }

  factory MembershipRoleResponse.fromMap(Map<String, dynamic> map) {
    return MembershipRoleResponse(
      expiryDetail: pulumi.Input.fromValue(ExpiryDetailResponse.fromMap((map['expiryDetail']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      restrictionEvaluations: pulumi.Input.fromValue(RestrictionEvaluationsResponse.fromMap((map['restrictionEvaluations']! as Map).cast<String, dynamic>())),
    );
  }
}

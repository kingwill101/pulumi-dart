// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_role_restriction_evaluation_response.dart';

/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluationsResponse {
  /// Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  final pulumi.Input<MembershipRoleRestrictionEvaluationResponse> memberRestrictionEvaluation;

  /// Creates a new [RestrictionEvaluationsResponse].
  /// [memberRestrictionEvaluation] Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  RestrictionEvaluationsResponse({
    required this.memberRestrictionEvaluation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberRestrictionEvaluation': pulumi.Input.mapInputValue<MembershipRoleRestrictionEvaluationResponse, Map<String, dynamic>>(memberRestrictionEvaluation, (value) => value.toMap()),
    };
  }

  factory RestrictionEvaluationsResponse.fromMap(Map<String, dynamic> map) {
    return RestrictionEvaluationsResponse(
      memberRestrictionEvaluation: pulumi.Input.fromValue(MembershipRoleRestrictionEvaluationResponse.fromMap((map['memberRestrictionEvaluation']! as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluationsCloudidentityV1beta1 {
  /// Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  final pulumi.Input<Map<String, dynamic>>? memberRestrictionEvaluation;

  /// Creates a new [RestrictionEvaluationsCloudidentityV1beta1].
  /// [memberRestrictionEvaluation] Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  RestrictionEvaluationsCloudidentityV1beta1({
    this.memberRestrictionEvaluation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberRestrictionEvaluation': ?memberRestrictionEvaluation,
    };
  }

  factory RestrictionEvaluationsCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return RestrictionEvaluationsCloudidentityV1beta1(
      memberRestrictionEvaluation: map['memberRestrictionEvaluation'] == null ? null : ((map['memberRestrictionEvaluation'] as Map).cast<String, dynamic>()).input(),
    );
  }
}


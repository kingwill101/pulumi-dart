// ignore_for_file: unused_element, unnecessary_cast


/// Evaluations of restrictions applied to parent group on this membership.
class RestrictionEvaluations {
  /// Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  final Map<String, dynamic>? memberRestrictionEvaluation;

  /// Creates a new [RestrictionEvaluations].
  /// [memberRestrictionEvaluation] Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.
  RestrictionEvaluations({
    this.memberRestrictionEvaluation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberRestrictionEvaluation': ?memberRestrictionEvaluation,
    };
  }

  factory RestrictionEvaluations.fromMap(Map<String, dynamic> map) {
    return RestrictionEvaluations(
      memberRestrictionEvaluation: map['memberRestrictionEvaluation'] == null ? null : (map['memberRestrictionEvaluation'] as Map).cast<String, dynamic>(),
    );
  }
}


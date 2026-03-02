// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Criteria specific to the AlertPolicys that this Snooze applies to. The Snooze will suppress alerts that come from one of the AlertPolicys whose names are supplied.
class CriteriaResponse {
  /// The specific AlertPolicy names for the alert that should be snoozed. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID] There is a limit of 16 policies per snooze. This limit is checked during snooze creation.
  final pulumi.Input<List<String>> policies;

  /// Creates a new [CriteriaResponse].
  /// [policies] The specific AlertPolicy names for the alert that should be snoozed. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID] There is a limit of 16 policies per snooze. This limit is checked during snooze creation.
  CriteriaResponse({
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': policies,
    };
  }

  factory CriteriaResponse.fromMap(Map<String, dynamic> map) {
    return CriteriaResponse(
      policies: ((map['policies'] as List).cast<String>()).input(),
    );
  }
}


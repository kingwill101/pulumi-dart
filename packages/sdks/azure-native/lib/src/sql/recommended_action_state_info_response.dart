// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information of current state for an Azure SQL Database, Server or Elastic Pool Recommended Action.
class RecommendedActionStateInfoResponse {
  /// Gets who initiated the execution of this recommended action. Possible Value are: User    -&gt; When user explicity notified system to apply the recommended action. System  -&gt; When auto-execute status of this advisor was set to 'Enabled', in which case the system applied it.
  final pulumi.Input<String> actionInitiatedBy;
  /// Current state the recommended action is in. Some commonly used states are: Active      -&gt; recommended action is active and no action has been taken yet. Pending     -&gt; recommended action is approved for and is awaiting execution. Executing   -&gt; recommended action is being applied on the user database. Verifying   -&gt; recommended action was applied and is being verified of its usefulness by the system. Success     -&gt; recommended action was applied and improvement found during verification. Pending Revert  -&gt; verification found little or no improvement so recommended action is queued for revert or user has manually reverted. Reverting   -&gt; changes made while applying recommended action are being reverted on the user database. Reverted    -&gt; successfully reverted the changes made by recommended action on user database. Ignored     -&gt; user explicitly ignored/discarded the recommended action.
  final pulumi.Input<String> currentValue;
  /// Gets the time when the state was last modified
  final pulumi.Input<String> lastModified;

  /// Creates a new [RecommendedActionStateInfoResponse].
  /// [actionInitiatedBy] Gets who initiated the execution of this recommended action. Possible Value are: User    -&gt; When user explicity notified system to apply the recommended action. System  -&gt; When auto-execute status of this advisor was set to 'Enabled', in which case the system applied it.
  /// [currentValue] Current state the recommended action is in. Some commonly used states are: Active      -&gt; recommended action is active and no action has been taken yet. Pending     -&gt; recommended action is approved for and is awaiting execution. Executing   -&gt; recommended action is being applied on the user database. Verifying   -&gt; recommended action was applied and is being verified of its usefulness by the system. Success     -&gt; recommended action was applied and improvement found during verification. Pending Revert  -&gt; verification found little or no improvement so recommended action is queued for revert or user has manually reverted. Reverting   -&gt; changes made while applying recommended action are being reverted on the user database. Reverted    -&gt; successfully reverted the changes made by recommended action on user database. Ignored     -&gt; user explicitly ignored/discarded the recommended action.
  /// [lastModified] Gets the time when the state was last modified
  const RecommendedActionStateInfoResponse({
    required this.actionInitiatedBy,
    required this.currentValue,
    required this.lastModified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionInitiatedBy': actionInitiatedBy,
      'currentValue': currentValue,
      'lastModified': lastModified,
    };
  }

  factory RecommendedActionStateInfoResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionStateInfoResponse(
      actionInitiatedBy: pulumi.Input.fromValue(map['actionInitiatedBy'] as String),
      currentValue: pulumi.Input.fromValue(map['currentValue'] as String),
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
    );
  }
}

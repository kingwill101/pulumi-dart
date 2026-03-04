// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActivityLogAlertAction {
  /// The ID of the Action Group can be sourced from the `azure.monitoring.ActionGroup` resource.
  final pulumi.Input<String> actionGroupId;

  /// The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
  final pulumi.Input<Map<String, String>>? webhookProperties;

  /// Creates a new [ActivityLogAlertAction].
  /// [actionGroupId] The ID of the Action Group can be sourced from the `azure.monitoring.ActionGroup` resource.
  /// [webhookProperties] The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
  ActivityLogAlertAction({required this.actionGroupId, this.webhookProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'webhookProperties': ?webhookProperties,
    };
  }

  factory ActivityLogAlertAction.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertAction(
      actionGroupId: pulumi.Input.fromValue(map['actionGroupId'] as String),
      webhookProperties: (() {
        final guardedValue = map['webhookProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricAlertAction {
  /// The ID of the Action Group can be sourced from the `azure.monitoring.ActionGroup` resource
  final pulumi.Input<String> actionGroupId;

  /// The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
  final pulumi.Input<Map<String, String>>? webhookProperties;

  /// Creates a new [MetricAlertAction].
  /// [actionGroupId] The ID of the Action Group can be sourced from the `azure.monitoring.ActionGroup` resource
  /// [webhookProperties] The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
  MetricAlertAction({required this.actionGroupId, this.webhookProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'webhookProperties': ?webhookProperties,
    };
  }

  factory MetricAlertAction.fromMap(Map<String, dynamic> map) {
    return MetricAlertAction(
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

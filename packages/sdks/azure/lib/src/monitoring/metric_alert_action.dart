// ignore_for_file: unused_element, unnecessary_cast


class MetricAlertAction {
  /// The ID of the Action Group can be sourced from the `azure.monitoring.ActionGroup` resource
  final String actionGroupId;
  /// The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
  final Map<String, String>? webhookProperties;

  /// Creates a new [MetricAlertAction].
  /// [actionGroupId] The ID of the Action Group can be sourced from the `azure.monitoring.ActionGroup` resource
  /// [webhookProperties] The map of custom string properties to include with the post operation. These data are appended to the webhook payload.
  MetricAlertAction({
    required this.actionGroupId,
    this.webhookProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'webhookProperties': ?webhookProperties,
    };
  }

  factory MetricAlertAction.fromMap(Map<String, dynamic> map) {
    return MetricAlertAction(
      actionGroupId: map['actionGroupId'] as String,
      webhookProperties: map['webhookProperties'] == null ? null : (map['webhookProperties'] as Map).cast<String, String>(),
    );
  }
}


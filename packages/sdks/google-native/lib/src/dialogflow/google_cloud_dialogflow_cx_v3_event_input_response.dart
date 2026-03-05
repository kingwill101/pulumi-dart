// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3EventInputResponse {
  /// Name of the event.
  final pulumi.Input<String> event;

  /// Creates a new [GoogleCloudDialogflowCxV3EventInputResponse].
  /// [event] Name of the event.
  GoogleCloudDialogflowCxV3EventInputResponse({
    required this.event,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': event,
    };
  }

  factory GoogleCloudDialogflowCxV3EventInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EventInputResponse(
      event: pulumi.Input.fromValue(map['event'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines logging behavior for conversation lifecycle events.
class GoogleCloudDialogflowV2LoggingConfigResponse {
  /// Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in the conversation project as JSON format ConversationEvent protos.
  final pulumi.Input<bool> enableStackdriverLogging;

  /// Creates a new [GoogleCloudDialogflowV2LoggingConfigResponse].
  /// [enableStackdriverLogging] Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in the conversation project as JSON format ConversationEvent protos.
  const GoogleCloudDialogflowV2LoggingConfigResponse({
    required this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableStackdriverLogging': enableStackdriverLogging,
    };
  }

  factory GoogleCloudDialogflowV2LoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2LoggingConfigResponse(
      enableStackdriverLogging: pulumi.Input.fromValue(map['enableStackdriverLogging'] as bool),
    );
  }
}

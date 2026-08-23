// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the intent to trigger programmatically rather than as a result of natural language processing.
class GoogleCloudDialogflowCxV3IntentInputResponse {
  /// The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  final pulumi.Input<String> intent;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentInputResponse].
  /// [intent] The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  const GoogleCloudDialogflowCxV3IntentInputResponse({
    required this.intent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intent': intent,
    };
  }

  factory GoogleCloudDialogflowCxV3IntentInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3IntentInputResponse(
      intent: pulumi.Input.fromValue(map['intent'] as String),
    );
  }
}

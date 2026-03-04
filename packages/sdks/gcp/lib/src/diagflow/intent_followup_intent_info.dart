// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  final pulumi.Input<String>? followupIntentName;

  /// The unique identifier of the parent intent in the chain of followup intents.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  final pulumi.Input<String>? parentFollowupIntentName;

  /// Creates a new [IntentFollowupIntentInfo].
  /// [followupIntentName] The unique identifier of the followup intent.
  /// [parentFollowupIntentName] The unique identifier of the parent intent in the chain of followup intents.
  IntentFollowupIntentInfo({
    this.followupIntentName,
    this.parentFollowupIntentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followupIntentName': ?followupIntentName,
      'parentFollowupIntentName': ?parentFollowupIntentName,
    };
  }

  factory IntentFollowupIntentInfo.fromMap(Map<String, dynamic> map) {
    return IntentFollowupIntentInfo(
      followupIntentName: (() {
        final guardedValue = map['followupIntentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parentFollowupIntentName: (() {
        final guardedValue = map['parentFollowupIntentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

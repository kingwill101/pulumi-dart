// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Requester allows you to identify the entity, that requested the eviction of the target.
class RequesterPatch {
  /// intent specifies the action that should be taken for the specified target.
  ///
  /// - Eviction means that the requester is interested in the eviction of the target. - Withdrawn means that the requester is no longer interested in the eviction of the target.
  /// If all requesters' intents are withdrawn, the eviction will be canceled.
  /// Cancellation consequences:
  /// - Inactive responders will never run.
  /// - Active responders are expected to cancel the eviction.
  /// - Completed or Interrupted responders should not take any action.
  final pulumi.Input<String?>? intent;
  /// name allows you to identify the entity, that requested the eviction of the target.
  ///
  /// It must be a valid domain-prefixed key (such as "acme.io/foo"). This field must be unique for each requester. This field is required.
  final pulumi.Input<String?>? name;

  /// Creates a new [RequesterPatch].
  /// [intent] intent specifies the action that should be taken for the specified target.
  /// [name] name allows you to identify the entity, that requested the eviction of the target.
  const RequesterPatch({
    this.intent,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intent': ?intent,
      'name': ?name,
    };
  }

  factory RequesterPatch.fromMap(Map<String, dynamic> map) {
    return RequesterPatch(
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

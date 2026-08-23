// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupEmailReceiver {
  /// The email address of this receiver.
  final pulumi.Input<String> emailAddress;
  /// The name of the email receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  final pulumi.Input<String> name;
  /// Enables or disables the common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [ActionGroupEmailReceiver].
  /// [emailAddress] The email address of this receiver.
  /// [name] The name of the email receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  const ActionGroupEmailReceiver({
    required this.emailAddress,
    required this.name,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupEmailReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupEmailReceiver(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

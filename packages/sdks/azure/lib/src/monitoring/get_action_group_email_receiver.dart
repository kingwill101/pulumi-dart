// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupEmailReceiver {
  /// The email address of this receiver.
  final pulumi.Input<String> emailAddress;

  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;

  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool> useCommonAlertSchema;

  /// Creates a new [GetActionGroupEmailReceiver].
  /// [emailAddress] The email address of this receiver.
  /// [name] Specifies the name of the Action Group.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  GetActionGroupEmailReceiver({
    required this.emailAddress,
    required this.name,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupEmailReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupEmailReceiver(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      useCommonAlertSchema: pulumi.Input.fromValue(
        map['useCommonAlertSchema'] as bool,
      ),
    );
  }
}

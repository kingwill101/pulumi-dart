// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupAzureAppPushReceiver {
  /// The email address of the user signed into the mobile app who will receive push notifications from this receiver.
  final pulumi.Input<String> emailAddress;

  /// The name of the Azure app push receiver.
  final pulumi.Input<String> name;

  /// Creates a new [ActionGroupAzureAppPushReceiver].
  /// [emailAddress] The email address of the user signed into the mobile app who will receive push notifications from this receiver.
  /// [name] The name of the Azure app push receiver.
  ActionGroupAzureAppPushReceiver({
    required this.emailAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'emailAddress': emailAddress, 'name': name};
  }

  factory ActionGroupAzureAppPushReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupAzureAppPushReceiver(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

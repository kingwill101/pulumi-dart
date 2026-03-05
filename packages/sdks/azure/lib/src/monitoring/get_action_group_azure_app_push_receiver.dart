// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupAzureAppPushReceiver {
  /// The email address of this receiver.
  final pulumi.Input<String> emailAddress;
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;

  /// Creates a new [GetActionGroupAzureAppPushReceiver].
  /// [emailAddress] The email address of this receiver.
  /// [name] Specifies the name of the Action Group.
  GetActionGroupAzureAppPushReceiver({
    required this.emailAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
    };
  }

  factory GetActionGroupAzureAppPushReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupAzureAppPushReceiver(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


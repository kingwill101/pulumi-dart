// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupAzureAppPushReceiver {
  /// The email address of the user signed into the mobile app who will receive push notifications from this receiver.
  final String emailAddress;
  /// The name of the Azure app push receiver.
  final String name;

  /// Creates a new [ActionGroupAzureAppPushReceiver].
  /// [emailAddress] The email address of the user signed into the mobile app who will receive push notifications from this receiver.
  /// [name] The name of the Azure app push receiver.
  ActionGroupAzureAppPushReceiver({
    required this.emailAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
    };
  }

  factory ActionGroupAzureAppPushReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupAzureAppPushReceiver(
      emailAddress: map['emailAddress'] as String,
      name: map['name'] as String,
    );
  }
}


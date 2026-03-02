// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupVoiceReceiver {
  /// The country code of the voice receiver.
  final pulumi.Input<String> countryCode;
  /// The name of the voice receiver.
  final pulumi.Input<String> name;
  /// The phone number of the voice receiver.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [ActionGroupVoiceReceiver].
  /// [countryCode] The country code of the voice receiver.
  /// [name] The name of the voice receiver.
  /// [phoneNumber] The phone number of the voice receiver.
  ActionGroupVoiceReceiver({
    required this.countryCode,
    required this.name,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  factory ActionGroupVoiceReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupVoiceReceiver(
      countryCode: (map['countryCode'] as String).input(),
      name: (map['name'] as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
    );
  }
}


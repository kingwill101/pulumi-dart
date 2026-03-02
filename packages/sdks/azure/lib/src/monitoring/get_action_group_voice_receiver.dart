// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupVoiceReceiver {
  /// The country code of the voice receiver.
  final pulumi.Input<String> countryCode;
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// The phone number of the voice receiver.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [GetActionGroupVoiceReceiver].
  /// [countryCode] The country code of the voice receiver.
  /// [name] Specifies the name of the Action Group.
  /// [phoneNumber] The phone number of the voice receiver.
  GetActionGroupVoiceReceiver({
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

  factory GetActionGroupVoiceReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupVoiceReceiver(
      countryCode: (map['countryCode'] as String).input(),
      name: (map['name'] as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
    );
  }
}


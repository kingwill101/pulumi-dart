// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupSmsReceiver {
  /// The country code of the voice receiver.
  final pulumi.Input<String> countryCode;
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// The phone number of the voice receiver.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [GetActionGroupSmsReceiver].
  /// [countryCode] The country code of the voice receiver.
  /// [name] Specifies the name of the Action Group.
  /// [phoneNumber] The phone number of the voice receiver.
  const GetActionGroupSmsReceiver({
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

  factory GetActionGroupSmsReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupSmsReceiver(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}

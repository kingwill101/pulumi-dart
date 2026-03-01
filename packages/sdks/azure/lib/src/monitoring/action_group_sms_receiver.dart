// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupSmsReceiver {
  /// The country code of the SMS receiver.
  final String countryCode;
  /// The name of the SMS receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  final String name;
  /// The phone number of the SMS receiver.
  final String phoneNumber;

  /// Creates a new [ActionGroupSmsReceiver].
  /// [countryCode] The country code of the SMS receiver.
  /// [name] The name of the SMS receiver. Names must be unique (case-insensitive) across all receivers within an action group.
  /// [phoneNumber] The phone number of the SMS receiver.
  ActionGroupSmsReceiver({
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

  factory ActionGroupSmsReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupSmsReceiver(
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}


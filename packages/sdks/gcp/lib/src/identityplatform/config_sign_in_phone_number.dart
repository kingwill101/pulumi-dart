// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigSignInPhoneNumber {
  /// Whether phone number auth is enabled for the project or not.
  final pulumi.Input<bool> enabled;
  /// A map of <test phone number, fake code> that can be used for phone auth testing.
  final pulumi.Input<Map<String, String>>? testPhoneNumbers;

  /// Creates a new [ConfigSignInPhoneNumber].
  /// [enabled] Whether phone number auth is enabled for the project or not.
  /// [testPhoneNumbers] A map of <test phone number, fake code> that can be used for phone auth testing.
  ConfigSignInPhoneNumber({
    required this.enabled,
    this.testPhoneNumbers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'testPhoneNumbers': ?testPhoneNumbers,
    };
  }

  factory ConfigSignInPhoneNumber.fromMap(Map<String, dynamic> map) {
    return ConfigSignInPhoneNumber(
      enabled: (map['enabled'] as bool).input(),
      testPhoneNumbers: map['testPhoneNumbers'] == null ? null : ((map['testPhoneNumbers']! as Map).cast<String, String>()).input(),
    );
  }
}


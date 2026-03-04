// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigSignInPhoneNumber {
  /// Whether phone number auth is enabled for the project or not.
  final pulumi.Input<bool> enabled;

  /// A map of &lt;test phone number, fake code&gt; that can be used for phone auth testing.
  final pulumi.Input<Map<String, String>>? testPhoneNumbers;

  /// Creates a new [ConfigSignInPhoneNumber].
  /// [enabled] Whether phone number auth is enabled for the project or not.
  /// [testPhoneNumbers] A map of &lt;test phone number, fake code&gt; that can be used for phone auth testing.
  ConfigSignInPhoneNumber({required this.enabled, this.testPhoneNumbers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'testPhoneNumbers': ?testPhoneNumbers,
    };
  }

  factory ConfigSignInPhoneNumber.fromMap(Map<String, dynamic> map) {
    return ConfigSignInPhoneNumber(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      testPhoneNumbers: (() {
        final guardedValue = map['testPhoneNumbers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

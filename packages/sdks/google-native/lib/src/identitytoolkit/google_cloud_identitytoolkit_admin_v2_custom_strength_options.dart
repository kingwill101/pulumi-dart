// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom strength options to enforce on user passwords.
class GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions {
  /// The password must contain a lower case character.
  final pulumi.Input<bool>? containsLowercaseCharacter;
  /// The password must contain a non alpha numeric character.
  final pulumi.Input<bool>? containsNonAlphanumericCharacter;
  /// The password must contain a number.
  final pulumi.Input<bool>? containsNumericCharacter;
  /// The password must contain an upper case character.
  final pulumi.Input<bool>? containsUppercaseCharacter;
  /// Maximum password length. No default max length
  final pulumi.Input<int>? maxPasswordLength;
  /// Minimum password length. Range from 6 to 30
  final pulumi.Input<int>? minPasswordLength;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions].
  /// [containsLowercaseCharacter] The password must contain a lower case character.
  /// [containsNonAlphanumericCharacter] The password must contain a non alpha numeric character.
  /// [containsNumericCharacter] The password must contain a number.
  /// [containsUppercaseCharacter] The password must contain an upper case character.
  /// [maxPasswordLength] Maximum password length. No default max length
  /// [minPasswordLength] Minimum password length. Range from 6 to 30
  GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions({
    this.containsLowercaseCharacter,
    this.containsNonAlphanumericCharacter,
    this.containsNumericCharacter,
    this.containsUppercaseCharacter,
    this.maxPasswordLength,
    this.minPasswordLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containsLowercaseCharacter': ?containsLowercaseCharacter,
      'containsNonAlphanumericCharacter': ?containsNonAlphanumericCharacter,
      'containsNumericCharacter': ?containsNumericCharacter,
      'containsUppercaseCharacter': ?containsUppercaseCharacter,
      'maxPasswordLength': ?maxPasswordLength,
      'minPasswordLength': ?minPasswordLength,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions(
      containsLowercaseCharacter: (() { final guardedValue = map['containsLowercaseCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containsNonAlphanumericCharacter: (() { final guardedValue = map['containsNonAlphanumericCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containsNumericCharacter: (() { final guardedValue = map['containsNumericCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containsUppercaseCharacter: (() { final guardedValue = map['containsUppercaseCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxPasswordLength: (() { final guardedValue = map['maxPasswordLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minPasswordLength: (() { final guardedValue = map['minPasswordLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


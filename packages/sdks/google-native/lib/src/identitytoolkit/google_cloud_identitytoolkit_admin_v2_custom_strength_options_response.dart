// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom strength options to enforce on user passwords.
class GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse {
  /// The password must contain a lower case character.
  final pulumi.Input<bool> containsLowercaseCharacter;
  /// The password must contain a non alpha numeric character.
  final pulumi.Input<bool> containsNonAlphanumericCharacter;
  /// The password must contain a number.
  final pulumi.Input<bool> containsNumericCharacter;
  /// The password must contain an upper case character.
  final pulumi.Input<bool> containsUppercaseCharacter;
  /// Maximum password length. No default max length
  final pulumi.Input<int> maxPasswordLength;
  /// Minimum password length. Range from 6 to 30
  final pulumi.Input<int> minPasswordLength;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse].
  /// [containsLowercaseCharacter] The password must contain a lower case character.
  /// [containsNonAlphanumericCharacter] The password must contain a non alpha numeric character.
  /// [containsNumericCharacter] The password must contain a number.
  /// [containsUppercaseCharacter] The password must contain an upper case character.
  /// [maxPasswordLength] Maximum password length. No default max length
  /// [minPasswordLength] Minimum password length. Range from 6 to 30
  GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse({
    required this.containsLowercaseCharacter,
    required this.containsNonAlphanumericCharacter,
    required this.containsNumericCharacter,
    required this.containsUppercaseCharacter,
    required this.maxPasswordLength,
    required this.minPasswordLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containsLowercaseCharacter': containsLowercaseCharacter,
      'containsNonAlphanumericCharacter': containsNonAlphanumericCharacter,
      'containsNumericCharacter': containsNumericCharacter,
      'containsUppercaseCharacter': containsUppercaseCharacter,
      'maxPasswordLength': maxPasswordLength,
      'minPasswordLength': minPasswordLength,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse(
      containsLowercaseCharacter: pulumi.Input.fromValue(map['containsLowercaseCharacter'] as bool),
      containsNonAlphanumericCharacter: pulumi.Input.fromValue(map['containsNonAlphanumericCharacter'] as bool),
      containsNumericCharacter: pulumi.Input.fromValue(map['containsNumericCharacter'] as bool),
      containsUppercaseCharacter: pulumi.Input.fromValue(map['containsUppercaseCharacter'] as bool),
      maxPasswordLength: pulumi.Input.fromValue(map['maxPasswordLength'] as int),
      minPasswordLength: pulumi.Input.fromValue(map['minPasswordLength'] as int),
    );
  }
}


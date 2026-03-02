// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_sign_in_anonymous.dart';
import 'config_sign_in_email.dart';
import 'config_sign_in_hash_config.dart';
import 'config_sign_in_phone_number.dart';

class ConfigSignIn {
  /// Whether to allow more than one account to have the same email.
  final pulumi.Input<bool>? allowDuplicateEmails;
  /// Configuration options related to authenticating an anonymous user.
  /// Structure is documented below.
  final pulumi.Input<ConfigSignInAnonymous>? anonymous;
  /// Configuration options related to authenticating a user by their email address.
  /// Structure is documented below.
  final pulumi.Input<ConfigSignInEmail>? email;
  /// (Output)
  /// Output only. Hash config information.
  /// Structure is documented below.
  final pulumi.Input<List<ConfigSignInHashConfig>>? hashConfigs;
  /// Configuration options related to authenticated a user by their phone number.
  /// Structure is documented below.
  final pulumi.Input<ConfigSignInPhoneNumber>? phoneNumber;

  /// Creates a new [ConfigSignIn].
  /// [allowDuplicateEmails] Whether to allow more than one account to have the same email.
  /// [anonymous] Configuration options related to authenticating an anonymous user.
  /// [email] Configuration options related to authenticating a user by their email address.
  /// [hashConfigs] (Output)
  /// [phoneNumber] Configuration options related to authenticated a user by their phone number.
  ConfigSignIn({
    this.allowDuplicateEmails,
    this.anonymous,
    this.email,
    this.hashConfigs,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDuplicateEmails': ?allowDuplicateEmails,
      'anonymous': ?pulumi.Input.mapOptionalInputValue<ConfigSignInAnonymous, Map<String, dynamic>>(anonymous, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<ConfigSignInEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'hashConfigs': ?pulumi.Input.mapOptionalInputValue<List<ConfigSignInHashConfig>, List<Map<String, dynamic>>>(hashConfigs, (value) => pulumi.Input.encodeList<ConfigSignInHashConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'phoneNumber': ?pulumi.Input.mapOptionalInputValue<ConfigSignInPhoneNumber, Map<String, dynamic>>(phoneNumber, (value) => value.toMap()),
    };
  }

  factory ConfigSignIn.fromMap(Map<String, dynamic> map) {
    return ConfigSignIn(
      allowDuplicateEmails: map['allowDuplicateEmails'] == null ? null : (map['allowDuplicateEmails'] as bool).input(),
      anonymous: map['anonymous'] == null ? null : (ConfigSignInAnonymous.fromMap((map['anonymous'] as Map).cast<String, dynamic>())).input(),
      email: map['email'] == null ? null : (ConfigSignInEmail.fromMap((map['email'] as Map).cast<String, dynamic>())).input(),
      hashConfigs: map['hashConfigs'] == null ? null : (pulumi.Input.decodeList<ConfigSignInHashConfig>(map['hashConfigs'], (value) => ConfigSignInHashConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (ConfigSignInPhoneNumber.fromMap((map['phoneNumber'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


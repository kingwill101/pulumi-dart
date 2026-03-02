// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeystoresAliasesSelfSignedCertSubject {
  /// Common name of the organization. Maximum length is 64 characters.
  final pulumi.Input<String>? commonName;
  /// Two-letter country code. Example, IN for India, US for United States of America.
  final pulumi.Input<String>? countryCode;
  /// Email address. Max 255 characters.
  final pulumi.Input<String>? email;
  /// City or town name. Maximum length is 128 characters.
  final pulumi.Input<String>? locality;
  /// Organization name. Maximum length is 64 characters.
  final pulumi.Input<String>? org;
  /// Organization team name. Maximum length is 64 characters.
  final pulumi.Input<String>? orgUnit;
  /// State or district name. Maximum length is 128 characters.
  final pulumi.Input<String>? state;

  /// Creates a new [KeystoresAliasesSelfSignedCertSubject].
  /// [commonName] Common name of the organization. Maximum length is 64 characters.
  /// [countryCode] Two-letter country code. Example, IN for India, US for United States of America.
  /// [email] Email address. Max 255 characters.
  /// [locality] City or town name. Maximum length is 128 characters.
  /// [org] Organization name. Maximum length is 64 characters.
  /// [orgUnit] Organization team name. Maximum length is 64 characters.
  /// [state] State or district name. Maximum length is 128 characters.
  KeystoresAliasesSelfSignedCertSubject({
    this.commonName,
    this.countryCode,
    this.email,
    this.locality,
    this.org,
    this.orgUnit,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'countryCode': ?countryCode,
      'email': ?email,
      'locality': ?locality,
      'org': ?org,
      'orgUnit': ?orgUnit,
      'state': ?state,
    };
  }

  factory KeystoresAliasesSelfSignedCertSubject.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertSubject(
      commonName: map['commonName'] == null ? null : (map['commonName'] as String).input(),
      countryCode: map['countryCode'] == null ? null : (map['countryCode'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      locality: map['locality'] == null ? null : (map['locality'] as String).input(),
      org: map['org'] == null ? null : (map['org'] as String).input(),
      orgUnit: map['orgUnit'] == null ? null : (map['orgUnit'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}


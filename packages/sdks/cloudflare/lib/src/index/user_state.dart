// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_organization.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Lists the betas that the user is participating in.
  final pulumi.Input<List<String>?>? betas;
  /// The country in which the user lives.
  final pulumi.Input<String?>? country;
  /// Current email address of the user.
  final pulumi.Input<String?>? email;
  /// User's first name
  final pulumi.Input<String?>? firstName;
  /// Indicates whether user has any business zones
  final pulumi.Input<bool?>? hasBusinessZones;
  /// Indicates whether user has any enterprise zones
  final pulumi.Input<bool?>? hasEnterpriseZones;
  /// Indicates whether user has any pro zones
  final pulumi.Input<bool?>? hasProZones;
  /// User's last name
  final pulumi.Input<String?>? lastName;
  final pulumi.Input<List<UserOrganization>?>? organizations;
  /// Indicates whether user has been suspended
  final pulumi.Input<bool?>? suspended;
  /// User's telephone number
  final pulumi.Input<String?>? telephone;
  /// Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  final pulumi.Input<bool?>? twoFactorAuthenticationEnabled;
  /// Indicates whether two-factor authentication is required by one of the accounts that the user is a member of.
  final pulumi.Input<bool?>? twoFactorAuthenticationLocked;
  /// The zipcode or postal code where the user lives.
  final pulumi.Input<String?>? zipcode;

  /// Creates a new [UserState].
  /// [betas] Lists the betas that the user is participating in.
  /// [country] The country in which the user lives.
  /// [email] Current email address of the user.
  /// [firstName] User's first name
  /// [hasBusinessZones] Indicates whether user has any business zones
  /// [hasEnterpriseZones] Indicates whether user has any enterprise zones
  /// [hasProZones] Indicates whether user has any pro zones
  /// [lastName] User's last name
  /// [organizations] Optional.
  /// [suspended] Indicates whether user has been suspended
  /// [telephone] User's telephone number
  /// [twoFactorAuthenticationEnabled] Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  /// [twoFactorAuthenticationLocked] Indicates whether two-factor authentication is required by one of the accounts that the user is a member of.
  /// [zipcode] The zipcode or postal code where the user lives.
  const UserState({
    this.betas,
    this.country,
    this.email,
    this.firstName,
    this.hasBusinessZones,
    this.hasEnterpriseZones,
    this.hasProZones,
    this.lastName,
    this.organizations,
    this.suspended,
    this.telephone,
    this.twoFactorAuthenticationEnabled,
    this.twoFactorAuthenticationLocked,
    this.zipcode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'betas': ?betas,
      'country': ?country,
      'email': ?email,
      'firstName': ?firstName,
      'hasBusinessZones': ?hasBusinessZones,
      'hasEnterpriseZones': ?hasEnterpriseZones,
      'hasProZones': ?hasProZones,
      'lastName': ?lastName,
      'organizations': ?pulumi.Input.mapOptionalInputValue<List<UserOrganization>, List<Map<String, dynamic>>>(organizations, (value) => pulumi.Input.encodeList<UserOrganization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'suspended': ?suspended,
      'telephone': ?telephone,
      'twoFactorAuthenticationEnabled': ?twoFactorAuthenticationEnabled,
      'twoFactorAuthenticationLocked': ?twoFactorAuthenticationLocked,
      'zipcode': ?zipcode,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      betas: (() { final guardedValue = map['betas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasBusinessZones: (() { final guardedValue = map['hasBusinessZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hasEnterpriseZones: (() { final guardedValue = map['hasEnterpriseZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hasProZones: (() { final guardedValue = map['hasProZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizations: (() { final guardedValue = map['organizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserOrganization>(guardedValue, (value) => UserOrganization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      telephone: (() { final guardedValue = map['telephone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twoFactorAuthenticationEnabled: (() { final guardedValue = map['twoFactorAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      twoFactorAuthenticationLocked: (() { final guardedValue = map['twoFactorAuthenticationLocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zipcode: (() { final guardedValue = map['zipcode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

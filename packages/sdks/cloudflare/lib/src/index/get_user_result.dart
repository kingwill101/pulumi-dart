// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_organization.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// Lists the betas that the user is participating in.
  final List<String>? betas;
  /// The country in which the user lives.
  final String? country;
  /// Current email address of the user.
  final String? email;
  /// User's first name
  final String? firstName;
  /// Indicates whether user has any business zones
  final bool? hasBusinessZones;
  /// Indicates whether user has any enterprise zones
  final bool? hasEnterpriseZones;
  /// Indicates whether user has any pro zones
  final bool? hasProZones;
  /// Identifier of the user.
  final String? id;
  /// User's last name
  final String? lastName;
  final List<GetUserOrganization>? organizations;
  /// Indicates whether user has been suspended
  final bool? suspended;
  /// User's telephone number
  final String? telephone;
  /// Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  final bool? twoFactorAuthenticationEnabled;
  /// Indicates whether two-factor authentication is required by one of the accounts that the user is a member of.
  final bool? twoFactorAuthenticationLocked;
  /// The zipcode or postal code where the user lives.
  final String? zipcode;

  /// Creates a new [GetUserResult].
  /// [betas] Lists the betas that the user is participating in.
  /// [country] The country in which the user lives.
  /// [email] Current email address of the user.
  /// [firstName] User's first name
  /// [hasBusinessZones] Indicates whether user has any business zones
  /// [hasEnterpriseZones] Indicates whether user has any enterprise zones
  /// [hasProZones] Indicates whether user has any pro zones
  /// [id] Identifier of the user.
  /// [lastName] User's last name
  /// [organizations] Optional.
  /// [suspended] Indicates whether user has been suspended
  /// [telephone] User's telephone number
  /// [twoFactorAuthenticationEnabled] Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  /// [twoFactorAuthenticationLocked] Indicates whether two-factor authentication is required by one of the accounts that the user is a member of.
  /// [zipcode] The zipcode or postal code where the user lives.
  const GetUserResult({
    this.betas,
    this.country,
    this.email,
    this.firstName,
    this.hasBusinessZones,
    this.hasEnterpriseZones,
    this.hasProZones,
    this.id,
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
      'id': ?id,
      'lastName': ?lastName,
      'organizations': ?(() { final guardedValue = organizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserOrganization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'suspended': ?suspended,
      'telephone': ?telephone,
      'twoFactorAuthenticationEnabled': ?twoFactorAuthenticationEnabled,
      'twoFactorAuthenticationLocked': ?twoFactorAuthenticationLocked,
      'zipcode': ?zipcode,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      betas: (() { final guardedValue = map['betas']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hasBusinessZones: (() { final guardedValue = map['hasBusinessZones']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hasEnterpriseZones: (() { final guardedValue = map['hasEnterpriseZones']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hasProZones: (() { final guardedValue = map['hasProZones']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizations: (() { final guardedValue = map['organizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserOrganization>(guardedValue, (value) => GetUserOrganization.fromMap((value as Map).cast<String, dynamic>())); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      telephone: (() { final guardedValue = map['telephone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      twoFactorAuthenticationEnabled: (() { final guardedValue = map['twoFactorAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      twoFactorAuthenticationLocked: (() { final guardedValue = map['twoFactorAuthenticationLocked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zipcode: (() { final guardedValue = map['zipcode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

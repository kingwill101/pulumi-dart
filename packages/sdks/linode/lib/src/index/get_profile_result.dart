// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_profile_referral.dart';

/// Result data returned by getProfile.
class GetProfileResult {
  /// The list of SSH Keys authorized to use Lish for this user. This value is ignored if lish_auth_method is 'disabled'.
  final List<String> authorizedKeys;

  /// The profile email address. This address will be used for communication with Linode as necessary.
  final String email;

  /// If true, email notifications will be sent about account activity. If false, when false business-critical communications may still be sent through email.
  final bool emailNotifications;
  final String id;

  /// If true, logins for the user will only be allowed from whitelisted IPs. This setting is currently deprecated, and cannot be enabled.
  final bool ipWhitelistEnabled;

  /// The methods of authentication allowed when connecting via Lish. 'keys_only' is the most secure with the intent to use Lish, and 'disabled' is recommended for users that will not use Lish at all.
  final String lishAuthMethod;

  /// Credit Card information associated with this Account.
  final List<GetProfileReferral> referrals;

  /// If true, the user has restrictions on what can be accessed on the Account.
  final bool restricted;

  /// The profile's preferred timezone. This is not used by the API, and is for the benefit of clients only. All times the API returns are in UTC.
  final String timezone;

  /// If true, logins from untrusted computers will require Two Factor Authentication.
  final bool twoFactorAuth;

  /// The username for logging in to Linode services.
  final String username;

  /// Creates a new [GetProfileResult].
  /// [authorizedKeys] The list of SSH Keys authorized to use Lish for this user. This value is ignored if lish_auth_method is 'disabled'.
  /// [email] The profile email address. This address will be used for communication with Linode as necessary.
  /// [emailNotifications] If true, email notifications will be sent about account activity. If false, when false business-critical communications may still be sent through email.
  /// [id] Required.
  /// [ipWhitelistEnabled] If true, logins for the user will only be allowed from whitelisted IPs. This setting is currently deprecated, and cannot be enabled.
  /// [lishAuthMethod] The methods of authentication allowed when connecting via Lish. 'keys_only' is the most secure with the intent to use Lish, and 'disabled' is recommended for users that will not use Lish at all.
  /// [referrals] Credit Card information associated with this Account.
  /// [restricted] If true, the user has restrictions on what can be accessed on the Account.
  /// [timezone] The profile's preferred timezone. This is not used by the API, and is for the benefit of clients only. All times the API returns are in UTC.
  /// [twoFactorAuth] If true, logins from untrusted computers will require Two Factor Authentication.
  /// [username] The username for logging in to Linode services.
  GetProfileResult({
    required this.authorizedKeys,
    required this.email,
    required this.emailNotifications,
    required this.id,
    required this.ipWhitelistEnabled,
    required this.lishAuthMethod,
    required this.referrals,
    required this.restricted,
    required this.timezone,
    required this.twoFactorAuth,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedKeys': authorizedKeys,
      'email': email,
      'emailNotifications': emailNotifications,
      'id': id,
      'ipWhitelistEnabled': ipWhitelistEnabled,
      'lishAuthMethod': lishAuthMethod,
      'referrals':
          pulumi.Input.encodeList<GetProfileReferral, Map<String, dynamic>>(
            referrals,
            (value) => value.toMap(),
          ),
      'restricted': restricted,
      'timezone': timezone,
      'twoFactorAuth': twoFactorAuth,
      'username': username,
    };
  }

  factory GetProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfileResult(
      authorizedKeys: (map['authorizedKeys'] as List).cast<String>(),
      email: map['email'] as String,
      emailNotifications: map['emailNotifications'] as bool,
      id: map['id'] as String,
      ipWhitelistEnabled: map['ipWhitelistEnabled'] as bool,
      lishAuthMethod: map['lishAuthMethod'] as String,
      referrals: pulumi.Input.decodeList<GetProfileReferral>(
        map['referrals']!,
        (value) =>
            GetProfileReferral.fromMap((value as Map).cast<String, dynamic>()),
      ),
      restricted: map['restricted'] as bool,
      timezone: map['timezone'] as String,
      twoFactorAuth: map['twoFactorAuth'] as bool,
      username: map['username'] as String,
    );
  }
}

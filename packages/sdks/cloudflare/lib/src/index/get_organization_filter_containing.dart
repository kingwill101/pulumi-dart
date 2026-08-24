// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationFilterContaining {
  /// Filter the list of organizations to the ones that contain this particular
  /// account.
  final pulumi.Input<String?>? account;
  /// Filter the list of organizations to the ones that contain this particular
  /// organization.
  final pulumi.Input<String?>? organization;
  /// Filter the list of organizations to the ones that contain this particular
  /// user.
  final pulumi.Input<String?>? user;

  /// Creates a new [GetOrganizationFilterContaining].
  /// [account] Filter the list of organizations to the ones that contain this particular
  /// [organization] Filter the list of organizations to the ones that contain this particular
  /// [user] Filter the list of organizations to the ones that contain this particular
  const GetOrganizationFilterContaining({
    this.account,
    this.organization,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'organization': ?organization,
      'user': ?user,
    };
  }

  factory GetOrganizationFilterContaining.fromMap(Map<String, dynamic> map) {
    return GetOrganizationFilterContaining(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GSuitePrincipal {
  /// This principal represents all users of the Google Workspace domain of the customer.
  final pulumi.Input<bool>? gsuiteDomain;
  /// This principal references a Google Workspace group name.
  final pulumi.Input<String>? gsuiteGroupEmail;
  /// This principal references a Google Workspace user account.
  final pulumi.Input<String>? gsuiteUserEmail;

  /// Creates a new [GSuitePrincipal].
  /// [gsuiteDomain] This principal represents all users of the Google Workspace domain of the customer.
  /// [gsuiteGroupEmail] This principal references a Google Workspace group name.
  /// [gsuiteUserEmail] This principal references a Google Workspace user account.
  GSuitePrincipal({
    this.gsuiteDomain,
    this.gsuiteGroupEmail,
    this.gsuiteUserEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gsuiteDomain': ?gsuiteDomain,
      'gsuiteGroupEmail': ?gsuiteGroupEmail,
      'gsuiteUserEmail': ?gsuiteUserEmail,
    };
  }

  factory GSuitePrincipal.fromMap(Map<String, dynamic> map) {
    return GSuitePrincipal(
      gsuiteDomain: (() { final guardedValue = map['gsuiteDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gsuiteGroupEmail: (() { final guardedValue = map['gsuiteGroupEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gsuiteUserEmail: (() { final guardedValue = map['gsuiteUserEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


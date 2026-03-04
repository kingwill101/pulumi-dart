// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountSasPolicy {
  /// The SAS expiration action. Possible values are `Log` and `Block`. Defaults to `Log`.
  final pulumi.Input<String>? expirationAction;

  /// The SAS expiration period in format of `DD.HH:MM:SS`.
  final pulumi.Input<String> expirationPeriod;

  /// Creates a new [AccountSasPolicy].
  /// [expirationAction] The SAS expiration action. Possible values are `Log` and `Block`. Defaults to `Log`.
  /// [expirationPeriod] The SAS expiration period in format of `DD.HH:MM:SS`.
  AccountSasPolicy({this.expirationAction, required this.expirationPeriod});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationAction': ?expirationAction,
      'expirationPeriod': expirationPeriod,
    };
  }

  factory AccountSasPolicy.fromMap(Map<String, dynamic> map) {
    return AccountSasPolicy(
      expirationAction: (() {
        final guardedValue = map['expirationAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expirationPeriod: pulumi.Input.fromValue(
        map['expirationPeriod'] as String,
      ),
    );
  }
}

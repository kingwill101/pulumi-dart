// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies an account and how to log into it.
class Account {
  /// An automatic google login account.
  final pulumi.Input<Map<String, dynamic>>? googleAuto;

  /// Creates a new [Account].
  /// [googleAuto] An automatic google login account.
  Account({this.googleAuto});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'googleAuto': ?googleAuto};
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      googleAuto: (() {
        final guardedValue = map['googleAuto'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TokenPasswordPassword2 {
  /// The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expiry;
  /// The value of the password (Sensitive).
  final pulumi.Input<String>? value;

  /// Creates a new [TokenPasswordPassword2].
  /// [expiry] The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created.
  /// [value] The value of the password (Sensitive).
  TokenPasswordPassword2({
    this.expiry,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': ?expiry,
      'value': ?value,
    };
  }

  factory TokenPasswordPassword2.fromMap(Map<String, dynamic> map) {
    return TokenPasswordPassword2(
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


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
      expiry: map['expiry'] == null ? null : (map['expiry']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}


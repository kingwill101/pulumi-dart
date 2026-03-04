// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the nonce used in the login flow.
class NonceResponse {
  /// The time after the request is made when the nonce should expire.
  final pulumi.Input<String>? nonceExpirationInterval;

  /// &lt;code&gt;false&lt;/code&gt; if the nonce should not be validated while completing the login flow; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? validateNonce;

  /// Creates a new [NonceResponse].
  /// [nonceExpirationInterval] The time after the request is made when the nonce should expire.
  /// [validateNonce] &lt;code&gt;false&lt;/code&gt; if the nonce should not be validated while completing the login flow; otherwise, &lt;code&gt;true&lt;/code&gt;.
  NonceResponse({this.nonceExpirationInterval, this.validateNonce});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonceExpirationInterval': ?nonceExpirationInterval,
      'validateNonce': ?validateNonce,
    };
  }

  factory NonceResponse.fromMap(Map<String, dynamic> map) {
    return NonceResponse(
      nonceExpirationInterval: (() {
        final guardedValue = map['nonceExpirationInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validateNonce: (() {
        final guardedValue = map['validateNonce'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

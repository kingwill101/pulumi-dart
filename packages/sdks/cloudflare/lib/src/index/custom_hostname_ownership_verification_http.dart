// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomHostnameOwnershipVerificationHttp {
  /// Token to be served.
  final pulumi.Input<String?>? httpBody;
  /// The HTTP URL that will be checked during custom hostname verification and where the customer should host the token.
  final pulumi.Input<String?>? httpUrl;

  /// Creates a new [CustomHostnameOwnershipVerificationHttp].
  /// [httpBody] Token to be served.
  /// [httpUrl] The HTTP URL that will be checked during custom hostname verification and where the customer should host the token.
  const CustomHostnameOwnershipVerificationHttp({
    this.httpBody,
    this.httpUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBody': ?httpBody,
      'httpUrl': ?httpUrl,
    };
  }

  factory CustomHostnameOwnershipVerificationHttp.fromMap(Map<String, dynamic> map) {
    return CustomHostnameOwnershipVerificationHttp(
      httpBody: (() { final guardedValue = map['httpBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpUrl: (() { final guardedValue = map['httpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

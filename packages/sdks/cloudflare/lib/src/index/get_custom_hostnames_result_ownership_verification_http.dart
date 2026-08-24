// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnamesResultOwnershipVerificationHttp {
  /// Token to be served.
  final pulumi.Input<String> httpBody;
  /// The HTTP URL that will be checked during custom hostname verification and where the customer should host the token.
  final pulumi.Input<String> httpUrl;

  /// Creates a new [GetCustomHostnamesResultOwnershipVerificationHttp].
  /// [httpBody] Token to be served.
  /// [httpUrl] The HTTP URL that will be checked during custom hostname verification and where the customer should host the token.
  const GetCustomHostnamesResultOwnershipVerificationHttp({
    required this.httpBody,
    required this.httpUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBody': httpBody,
      'httpUrl': httpUrl,
    };
  }

  factory GetCustomHostnamesResultOwnershipVerificationHttp.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesResultOwnershipVerificationHttp(
      httpBody: pulumi.Input.fromValue(map['httpBody'] as String),
      httpUrl: pulumi.Input.fromValue(map['httpUrl'] as String),
    );
  }
}

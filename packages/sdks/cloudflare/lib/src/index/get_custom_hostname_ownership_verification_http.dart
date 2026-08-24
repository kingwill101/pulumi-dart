// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnameOwnershipVerificationHttp {
  /// Token to be served.
  final pulumi.Input<String> httpBody;
  /// The HTTP URL that will be checked during custom hostname verification and where the customer should host the token.
  final pulumi.Input<String> httpUrl;

  /// Creates a new [GetCustomHostnameOwnershipVerificationHttp].
  /// [httpBody] Token to be served.
  /// [httpUrl] The HTTP URL that will be checked during custom hostname verification and where the customer should host the token.
  const GetCustomHostnameOwnershipVerificationHttp({
    required this.httpBody,
    required this.httpUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBody': httpBody,
      'httpUrl': httpUrl,
    };
  }

  factory GetCustomHostnameOwnershipVerificationHttp.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameOwnershipVerificationHttp(
      httpBody: pulumi.Input.fromValue(map['httpBody'] as String),
      httpUrl: pulumi.Input.fromValue(map['httpUrl'] as String),
    );
  }
}

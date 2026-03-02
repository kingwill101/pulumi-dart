// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the login flow, including the scopes that should be requested.
class LoginScopesResponse {
  /// A list of the scopes that should be requested while authenticating.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [LoginScopesResponse].
  /// [scopes] A list of the scopes that should be requested while authenticating.
  LoginScopesResponse({
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopes': ?scopes,
    };
  }

  factory LoginScopesResponse.fromMap(Map<String, dynamic> map) {
    return LoginScopesResponse(
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileSalesforceProfileUserCredentials {
  /// Password of the user.
  final pulumi.Input<String>? password;
  /// A reference to a Secret Manager resource name storing the user's password.
  final pulumi.Input<String>? secretManagerStoredPassword;
  /// A reference to a Secret Manager resource name storing the user's security token.
  ///
  /// <a name="nested_salesforce_profile_oauth2_client_credentials"></a>The `oauth2_client_credentials` block supports:
  final pulumi.Input<String>? secretManagerStoredSecurityToken;
  /// Security token of the user.
  final pulumi.Input<String>? securityToken;
  /// Username to use for authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionProfileSalesforceProfileUserCredentials].
  /// [password] Password of the user.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [secretManagerStoredSecurityToken] A reference to a Secret Manager resource name storing the user's security token.
  /// [securityToken] Security token of the user.
  /// [username] Username to use for authentication.
  ConnectionProfileSalesforceProfileUserCredentials({
    this.password,
    this.secretManagerStoredPassword,
    this.secretManagerStoredSecurityToken,
    this.securityToken,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'secretManagerStoredSecurityToken': ?secretManagerStoredSecurityToken,
      'securityToken': ?securityToken,
      'username': ?username,
    };
  }

  factory ConnectionProfileSalesforceProfileUserCredentials.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileSalesforceProfileUserCredentials(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null ? null : (map['secretManagerStoredPassword']! as String).input(),
      secretManagerStoredSecurityToken: map['secretManagerStoredSecurityToken'] == null ? null : (map['secretManagerStoredSecurityToken']! as String).input(),
      securityToken: map['securityToken'] == null ? null : (map['securityToken']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}


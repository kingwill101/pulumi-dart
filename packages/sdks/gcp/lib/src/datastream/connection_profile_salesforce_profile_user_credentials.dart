// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileSalesforceProfileUserCredentials {
  /// Password of the user.
  final pulumi.Input<String>? password;
  /// A reference to a Secret Manager resource name storing the user's password.
  final pulumi.Input<String>? secretManagerStoredPassword;
  /// A reference to a Secret Manager resource name storing the user's security token.
  ///
  /// &lt;a name="nested_salesforce_profile_oauth2_client_credentials"&gt;&lt;/a&gt;The `oauth2_client_credentials` block supports:
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
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretManagerStoredPassword: (() { final guardedValue = map['secretManagerStoredPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretManagerStoredSecurityToken: (() { final guardedValue = map['secretManagerStoredSecurityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityToken: (() { final guardedValue = map['securityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerAzureadAdministrator {
  /// Specifies whether only AD Users and administrators (e.g. `azuread_administrator[0].login_username`) can be used to login, or also local database users (e.g. `administratorLogin`). When `true`, the `administratorLogin` and `administratorLoginPassword` properties can be omitted.
  final pulumi.Input<bool?>? azureadAuthenticationOnly;
  /// The login username of the Azure AD Administrator of this SQL Server.
  final pulumi.Input<String> loginUsername;
  /// The object id of the Azure AD Administrator of this SQL Server.
  final pulumi.Input<String> objectId;
  /// The tenant id of the Azure AD Administrator of this SQL Server.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [ServerAzureadAdministrator].
  /// [azureadAuthenticationOnly] Specifies whether only AD Users and administrators (e.g. `azuread_administrator[0].login_username`) can be used to login, or also local database users (e.g. `administratorLogin`). When `true`, the `administratorLogin` and `administratorLoginPassword` properties can be omitted.
  /// [loginUsername] The login username of the Azure AD Administrator of this SQL Server.
  /// [objectId] The object id of the Azure AD Administrator of this SQL Server.
  /// [tenantId] The tenant id of the Azure AD Administrator of this SQL Server.
  const ServerAzureadAdministrator({
    this.azureadAuthenticationOnly,
    required this.loginUsername,
    required this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadAuthenticationOnly': ?azureadAuthenticationOnly,
      'loginUsername': loginUsername,
      'objectId': objectId,
      'tenantId': ?tenantId,
    };
  }

  factory ServerAzureadAdministrator.fromMap(Map<String, dynamic> map) {
    return ServerAzureadAdministrator(
      azureadAuthenticationOnly: (() { final guardedValue = map['azureadAuthenticationOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loginUsername: pulumi.Input.fromValue(map['loginUsername'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a active directory administrator.
class ServerExternalAdministrator {
  /// Type of the sever administrator.
  final pulumi.Input<String>? administratorType;
  /// Azure Active Directory only Authentication enabled.
  final pulumi.Input<bool>? azureADOnlyAuthentication;
  /// Login name of the server administrator.
  final pulumi.Input<String>? login;
  /// Principal Type of the sever administrator.
  final pulumi.Input<String>? principalType;
  /// SID (object ID) of the server administrator.
  final pulumi.Input<String>? sid;
  /// Tenant ID of the administrator.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ServerExternalAdministrator].
  /// [administratorType] Type of the sever administrator.
  /// [azureADOnlyAuthentication] Azure Active Directory only Authentication enabled.
  /// [login] Login name of the server administrator.
  /// [principalType] Principal Type of the sever administrator.
  /// [sid] SID (object ID) of the server administrator.
  /// [tenantId] Tenant ID of the administrator.
  ServerExternalAdministrator({
    this.administratorType,
    this.azureADOnlyAuthentication,
    this.login,
    this.principalType,
    this.sid,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': ?administratorType,
      'azureADOnlyAuthentication': ?azureADOnlyAuthentication,
      'login': ?login,
      'principalType': ?principalType,
      'sid': ?sid,
      'tenantId': ?tenantId,
    };
  }

  factory ServerExternalAdministrator.fromMap(Map<String, dynamic> map) {
    return ServerExternalAdministrator(
      administratorType: map['administratorType'] == null ? null : (map['administratorType']! as String).input(),
      azureADOnlyAuthentication: map['azureADOnlyAuthentication'] == null ? null : (map['azureADOnlyAuthentication']! as bool).input(),
      login: map['login'] == null ? null : (map['login']! as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType']! as String).input(),
      sid: map['sid'] == null ? null : (map['sid']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}


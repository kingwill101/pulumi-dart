// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is EasyAuth Microsoft Entra ID
class EasyAuthMicrosoftEntraIDAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String?>? authMode;
  /// The authentication type.
  /// Expected value is 'easyAuthMicrosoftEntraID'.
  final pulumi.Input<String> authType;
  /// Application clientId for EasyAuth Microsoft Entra ID.
  final pulumi.Input<String?>? clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String?>? deleteOrUpdateBehavior;
  /// Application Secret for EasyAuth Microsoft Entra ID.
  final pulumi.Input<String?>? secret;

  /// Creates a new [EasyAuthMicrosoftEntraIDAuthInfoResponse].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [clientId] Application clientId for EasyAuth Microsoft Entra ID.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [secret] Application Secret for EasyAuth Microsoft Entra ID.
  const EasyAuthMicrosoftEntraIDAuthInfoResponse({
    this.authMode,
    required this.authType,
    this.clientId,
    this.deleteOrUpdateBehavior,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'clientId': ?clientId,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'secret': ?secret,
    };
  }

  factory EasyAuthMicrosoftEntraIDAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return EasyAuthMicrosoftEntraIDAuthInfoResponse(
      authMode: (() { final guardedValue = map['authMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteOrUpdateBehavior: (() { final guardedValue = map['deleteOrUpdateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

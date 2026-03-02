// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is EasyAuth Microsoft Entra ID
class EasyAuthMicrosoftEntraIDAuthInfo {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;
  /// The authentication type.
  /// Expected value is 'easyAuthMicrosoftEntraID'.
  final pulumi.Input<String> authType;
  /// Application clientId for EasyAuth Microsoft Entra ID.
  final pulumi.Input<String>? clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Application Secret for EasyAuth Microsoft Entra ID.
  final pulumi.Input<String>? secret;

  /// Creates a new [EasyAuthMicrosoftEntraIDAuthInfo].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [clientId] Application clientId for EasyAuth Microsoft Entra ID.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [secret] Application Secret for EasyAuth Microsoft Entra ID.
  EasyAuthMicrosoftEntraIDAuthInfo({
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

  factory EasyAuthMicrosoftEntraIDAuthInfo.fromMap(Map<String, dynamic> map) {
    return EasyAuthMicrosoftEntraIDAuthInfo(
      authMode: map['authMode'] == null ? null : (map['authMode'] as String).input(),
      authType: (map['authType'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : (map['deleteOrUpdateBehavior'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret'] as String).input(),
    );
  }
}


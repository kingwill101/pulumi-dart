// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthentication {
  /// Service principal certificate for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalCertificate`.
  final pulumi.Input<String>? certificate;
  /// Client ID for `userAssignedIdentity` or `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`. When `type` is set to `userAssignedIdentity`, `clientId` and `subscriptionId` should be either both specified or both not specified.
  final pulumi.Input<String>? clientId;
  /// Username or account name for secret auth. `name` and `secret` should be either both specified or both not specified when `type` is set to `secret`.
  final pulumi.Input<String>? name;
  /// Principal ID for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`.
  final pulumi.Input<String>? principalId;
  /// Password or account key for secret auth. `secret` and `name` should be either both specified or both not specified when `type` is set to `secret`.
  final pulumi.Input<String>? secret;
  /// Subscription ID for `userAssignedIdentity`. `subscriptionId` and `clientId` should be either both specified or both not specified.
  final pulumi.Input<String>? subscriptionId;
  /// The authentication type. Possible values are `systemAssignedIdentity`, `userAssignedIdentity`, `servicePrincipalSecret`, `servicePrincipalCertificate`, `secret`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [ConnectionAuthentication].
  /// [certificate] Service principal certificate for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalCertificate`.
  /// [clientId] Client ID for `userAssignedIdentity` or `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`. When `type` is set to `userAssignedIdentity`, `clientId` and `subscriptionId` should be either both specified or both not specified.
  /// [name] Username or account name for secret auth. `name` and `secret` should be either both specified or both not specified when `type` is set to `secret`.
  /// [principalId] Principal ID for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`.
  /// [secret] Password or account key for secret auth. `secret` and `name` should be either both specified or both not specified when `type` is set to `secret`.
  /// [subscriptionId] Subscription ID for `userAssignedIdentity`. `subscriptionId` and `clientId` should be either both specified or both not specified.
  /// [type] The authentication type. Possible values are `systemAssignedIdentity`, `userAssignedIdentity`, `servicePrincipalSecret`, `servicePrincipalCertificate`, `secret`. Changing this forces a new resource to be created.
  const ConnectionAuthentication({
    this.certificate,
    this.clientId,
    this.name,
    this.principalId,
    this.secret,
    this.subscriptionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'clientId': ?clientId,
      'name': ?name,
      'principalId': ?principalId,
      'secret': ?secret,
      'subscriptionId': ?subscriptionId,
      'type': type,
    };
  }

  factory ConnectionAuthentication.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthentication(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

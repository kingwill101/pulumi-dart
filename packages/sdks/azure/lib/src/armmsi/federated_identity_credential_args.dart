// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_armmsi_federated_identity_credential_federated_identity_credential_args_doc}
/// The set of arguments for FederatedIdentityCredential.
/// {@endtemplate}
/// {@macro pulumi_armmsi_federated_identity_credential_federated_identity_credential_args_doc}
class FederatedIdentityCredentialArgs {
  /// Specifies the audience for this Federated Identity Credential.
  final pulumi.Input<String> audience;
  /// Specifies the issuer of this Federated Identity Credential.
  final pulumi.Input<String> issuer;
  /// Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? parentId;
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the subject for this Federated Identity Credential.
  final pulumi.Input<String> subject;
  /// Specifies the ID of the User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [FederatedIdentityCredentialArgs].
  /// [audience] Specifies the audience for this Federated Identity Credential.
  /// [issuer] Specifies the issuer of this Federated Identity Credential.
  /// [name] Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created.
  /// [parentId] Optional.
  /// [resourceGroupName] Optional.
  /// [subject] Specifies the subject for this Federated Identity Credential.
  /// [userAssignedIdentityId] Specifies the ID of the User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
  const FederatedIdentityCredentialArgs({
    required this.audience,
    required this.issuer,
    this.name,
    this.parentId,
    this.resourceGroupName,
    required this.subject,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'issuer': issuer,
      'name': ?name,
      'parentId': ?parentId,
      'resourceGroupName': ?resourceGroupName,
      'subject': subject,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory FederatedIdentityCredentialArgs.fromMap(Map<String, dynamic> map) {
    return FederatedIdentityCredentialArgs(
      audience: pulumi.Input.fromValue(map['audience'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

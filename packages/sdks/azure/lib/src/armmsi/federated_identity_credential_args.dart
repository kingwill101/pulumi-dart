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
  /// Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
  final pulumi.Input<String> parentId;
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the subject for this Federated Identity Credential.
  final pulumi.Input<String> subject;

  /// Creates a new [FederatedIdentityCredentialArgs].
  /// [audience] Specifies the audience for this Federated Identity Credential.
  /// [issuer] Specifies the issuer of this Federated Identity Credential.
  /// [name] Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created.
  /// [parentId] Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
  /// [resourceGroupName] Optional.
  /// [subject] Specifies the subject for this Federated Identity Credential.
  FederatedIdentityCredentialArgs({
    required pulumi.Output<String> audience,
    required pulumi.Output<String> issuer,
    pulumi.Output<String>? name,
    required pulumi.Output<String> parentId,
    pulumi.Output<String>? resourceGroupName,
    required pulumi.Output<String> subject,
  }) :
      audience = pulumi.Input.asInput<String>(audience),
      issuer = pulumi.Input.asInput<String>(issuer),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentId = pulumi.Input.asInput<String>(parentId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subject = pulumi.Input.asInput<String>(subject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'issuer': issuer,
      'name': ?name,
      'parentId': parentId,
      'resourceGroupName': ?resourceGroupName,
      'subject': subject,
    };
  }

  factory FederatedIdentityCredentialArgs.fromMap(Map<String, dynamic> map) {
    return FederatedIdentityCredentialArgs(
      audience: pulumi.Output.create<String>(map['audience'] as String),
      issuer: pulumi.Output.create<String>(map['issuer'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentId: pulumi.Output.create<String>(map['parentId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subject: pulumi.Output.create<String>(map['subject'] as String),
    );
  }
}


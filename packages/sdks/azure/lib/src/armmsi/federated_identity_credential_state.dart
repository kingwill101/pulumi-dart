// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FederatedIdentityCredential resources.
class FederatedIdentityCredentialState {
  /// Specifies the audience for this Federated Identity Credential.
  final pulumi.Input<String>? audience;
  /// Specifies the issuer of this Federated Identity Credential.
  final pulumi.Input<String>? issuer;
  /// Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
  final pulumi.Input<String>? parentId;
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the subject for this Federated Identity Credential.
  final pulumi.Input<String>? subject;

  /// Creates a new [FederatedIdentityCredentialState].
  /// [audience] Specifies the audience for this Federated Identity Credential.
  /// [issuer] Specifies the issuer of this Federated Identity Credential.
  /// [name] Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created.
  /// [parentId] Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
  /// [resourceGroupName] Optional.
  /// [subject] Specifies the subject for this Federated Identity Credential.
  FederatedIdentityCredentialState({
    this.audience,
    this.issuer,
    this.name,
    this.parentId,
    this.resourceGroupName,
    this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'issuer': ?issuer,
      'name': ?name,
      'parentId': ?parentId,
      'resourceGroupName': ?resourceGroupName,
      'subject': ?subject,
    };
  }

  factory FederatedIdentityCredentialState.fromMap(Map<String, dynamic> map) {
    return FederatedIdentityCredentialState(
      audience: map['audience'] == null ? null : (map['audience'] as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentId: map['parentId'] == null ? null : (map['parentId'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      subject: map['subject'] == null ? null : (map['subject'] as String).input(),
    );
  }
}


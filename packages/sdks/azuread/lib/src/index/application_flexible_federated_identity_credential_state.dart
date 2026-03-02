// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationFlexibleFederatedIdentityCredential resources.
class ApplicationFlexibleFederatedIdentityCredentialState {
  /// The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// The audience that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  final pulumi.Input<String>? audience;
  /// The expression to match for claims. See the Preview Documentation for more information.
  final pulumi.Input<String>? claimsMatchingExpression;
  /// A UUID used to uniquely identify this federated identity credential.
  final pulumi.Input<String>? credentialId;
  /// A description for the federated identity credential.
  final pulumi.Input<String>? description;
  /// A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? displayName;
  /// The URL of the external identity provider, which must match the issuer claim of the external token being exchanged.
  final pulumi.Input<String>? issuer;

  /// Creates a new [ApplicationFlexibleFederatedIdentityCredentialState].
  /// [applicationId] The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  /// [audience] The audience that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  /// [claimsMatchingExpression] The expression to match for claims. See the Preview Documentation for more information.
  /// [credentialId] A UUID used to uniquely identify this federated identity credential.
  /// [description] A description for the federated identity credential.
  /// [displayName] A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  /// [issuer] The URL of the external identity provider, which must match the issuer claim of the external token being exchanged.
  ApplicationFlexibleFederatedIdentityCredentialState({
    this.applicationId,
    this.audience,
    this.claimsMatchingExpression,
    this.credentialId,
    this.description,
    this.displayName,
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'audience': ?audience,
      'claimsMatchingExpression': ?claimsMatchingExpression,
      'credentialId': ?credentialId,
      'description': ?description,
      'displayName': ?displayName,
      'issuer': ?issuer,
    };
  }

  factory ApplicationFlexibleFederatedIdentityCredentialState.fromMap(Map<String, dynamic> map) {
    return ApplicationFlexibleFederatedIdentityCredentialState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      audience: map['audience'] == null ? null : (map['audience'] as String).input(),
      claimsMatchingExpression: map['claimsMatchingExpression'] == null ? null : (map['claimsMatchingExpression'] as String).input(),
      credentialId: map['credentialId'] == null ? null : (map['credentialId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
    );
  }
}


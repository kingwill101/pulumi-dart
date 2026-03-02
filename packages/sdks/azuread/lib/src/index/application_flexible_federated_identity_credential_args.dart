// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_flexible_federated_identity_credential_application_flexible_federated_identity_credential_args_doc}
/// The set of arguments for ApplicationFlexibleFederatedIdentityCredential.
/// {@endtemplate}
/// {@macro pulumi_index_application_flexible_federated_identity_credential_application_flexible_federated_identity_credential_args_doc}
class ApplicationFlexibleFederatedIdentityCredentialArgs {
  /// The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// The audience that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  final pulumi.Input<String> audience;
  /// The expression to match for claims. See the Preview Documentation for more information.
  final pulumi.Input<String> claimsMatchingExpression;
  /// A description for the federated identity credential.
  final pulumi.Input<String>? description;
  /// A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  final pulumi.Input<String> displayName;
  /// The URL of the external identity provider, which must match the issuer claim of the external token being exchanged.
  final pulumi.Input<String> issuer;

  /// Creates a new [ApplicationFlexibleFederatedIdentityCredentialArgs].
  /// [applicationId] The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  /// [audience] The audience that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  /// [claimsMatchingExpression] The expression to match for claims. See the Preview Documentation for more information.
  /// [description] A description for the federated identity credential.
  /// [displayName] A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  /// [issuer] The URL of the external identity provider, which must match the issuer claim of the external token being exchanged.
  ApplicationFlexibleFederatedIdentityCredentialArgs({
    required this.applicationId,
    required this.audience,
    required this.claimsMatchingExpression,
    this.description,
    required this.displayName,
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'audience': audience,
      'claimsMatchingExpression': claimsMatchingExpression,
      'description': ?description,
      'displayName': displayName,
      'issuer': issuer,
    };
  }

  factory ApplicationFlexibleFederatedIdentityCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationFlexibleFederatedIdentityCredentialArgs(
      applicationId: (map['applicationId'] as String).input(),
      audience: (map['audience'] as String).input(),
      claimsMatchingExpression: (map['claimsMatchingExpression'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      issuer: (map['issuer'] as String).input(),
    );
  }
}


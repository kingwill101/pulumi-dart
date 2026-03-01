// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_credential_args_doc}
/// The set of arguments for Credential.
/// {@endtemplate}
/// {@macro pulumi_testbase_credential_args_doc}
class CredentialArgs {
  /// The credential resource name.
  final pulumi.Input<String>? credentialName;
  /// Credential type.
  final pulumi.Input<String> credentialType;
  /// Credential display name.
  final pulumi.Input<String> displayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [CredentialArgs].
  /// [credentialName] The credential resource name.
  /// [credentialType] Credential type.
  /// [displayName] Credential display name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  CredentialArgs({
    pulumi.Output<String>? credentialName,
    required pulumi.Output<String> credentialType,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> testBaseAccountName,
  }) :
      credentialName = pulumi.Input.asOptionalInput<String>(credentialName),
      credentialType = pulumi.Input.asInput<String>(credentialType),
      displayName = pulumi.Input.asInput<String>(displayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': ?credentialName,
      'credentialType': credentialType,
      'displayName': displayName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory CredentialArgs.fromMap(Map<String, dynamic> map) {
    return CredentialArgs(
      credentialName: map['credentialName'] == null ? null : pulumi.Output.create<String>(map['credentialName'] as String),
      credentialType: pulumi.Output.create<String>(map['credentialType'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}


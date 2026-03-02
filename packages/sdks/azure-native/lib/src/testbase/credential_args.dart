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
    this.credentialName,
    required this.credentialType,
    required this.displayName,
    required this.resourceGroupName,
    required this.testBaseAccountName,
  });

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
      credentialName: map['credentialName'] == null ? null : (map['credentialName'] as String).input(),
      credentialType: (map['credentialType'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      testBaseAccountName: (map['testBaseAccountName'] as String).input(),
    );
  }
}


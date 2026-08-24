// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_security_impersonation_registry_email_security_impersonation_registry_args_doc}
/// The set of arguments for EmailSecurityImpersonationRegistry.
/// {@endtemplate}
/// {@macro pulumi_index_email_security_impersonation_registry_email_security_impersonation_registry_args_doc}
class EmailSecurityImpersonationRegistryArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? comments;
  final pulumi.Input<int?>? directoryId;
  final pulumi.Input<int?>? directoryNodeId;
  final pulumi.Input<String> email;
  final pulumi.Input<String?>? externalDirectoryNodeId;
  final pulumi.Input<bool> isEmailRegex;
  final pulumi.Input<String> name;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String?>? provenance;

  /// Creates a new [EmailSecurityImpersonationRegistryArgs].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [directoryId] Optional.
  /// [directoryNodeId] Optional.
  /// [email] Required.
  /// [externalDirectoryNodeId] Optional.
  /// [isEmailRegex] Required.
  /// [name] Required.
  /// [provenance] Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  const EmailSecurityImpersonationRegistryArgs({
    required this.accountId,
    this.comments,
    this.directoryId,
    this.directoryNodeId,
    required this.email,
    this.externalDirectoryNodeId,
    required this.isEmailRegex,
    required this.name,
    this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comments': ?comments,
      'directoryId': ?directoryId,
      'directoryNodeId': ?directoryNodeId,
      'email': email,
      'externalDirectoryNodeId': ?externalDirectoryNodeId,
      'isEmailRegex': isEmailRegex,
      'name': name,
      'provenance': ?provenance,
    };
  }

  factory EmailSecurityImpersonationRegistryArgs.fromMap(Map<String, dynamic> map) {
    return EmailSecurityImpersonationRegistryArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      directoryNodeId: (() { final guardedValue = map['directoryNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      externalDirectoryNodeId: (() { final guardedValue = map['externalDirectoryNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEmailRegex: pulumi.Input.fromValue(map['isEmailRegex'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

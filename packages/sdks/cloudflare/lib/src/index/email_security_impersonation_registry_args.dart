// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_security_impersonation_registry_email_security_impersonation_registry_args_doc}
/// The set of arguments for EmailSecurityImpersonationRegistry.
/// {@endtemplate}
/// {@macro pulumi_index_email_security_impersonation_registry_email_security_impersonation_registry_args_doc}
class EmailSecurityImpersonationRegistryArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Optional note describing the entry.
  final pulumi.Input<String?>? comments;
  /// Identifier of the directory the entry was synced from, when directory-synced.
  final pulumi.Input<int?>? directoryId;
  /// Identifier of the directory node the entry was synced from, when directory-synced.
  final pulumi.Input<int?>? directoryNodeId;
  /// Email address (or pattern) of the protected identity.
  final pulumi.Input<String> email;
  /// Deprecated. External identifier of the directory node.
  final pulumi.Input<String?>? externalDirectoryNodeId;
  /// Whether `email` is a regular expression instead of a literal address.
  final pulumi.Input<bool> isEmailRegex;
  /// Display name of the protected identity.
  final pulumi.Input<String> name;
  /// Source the entry was created from.
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String?>? provenance;

  /// Creates a new [EmailSecurityImpersonationRegistryArgs].
  /// [accountId] Identifier.
  /// [comments] Optional note describing the entry.
  /// [directoryId] Identifier of the directory the entry was synced from, when directory-synced.
  /// [directoryNodeId] Identifier of the directory node the entry was synced from, when directory-synced.
  /// [email] Email address (or pattern) of the protected identity.
  /// [externalDirectoryNodeId] Deprecated. External identifier of the directory node.
  /// [isEmailRegex] Whether `email` is a regular expression instead of a literal address.
  /// [name] Display name of the protected identity.
  /// [provenance] Source the entry was created from.
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
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      directoryNodeId: (() { final guardedValue = map['directoryNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      externalDirectoryNodeId: (() { final guardedValue = map['externalDirectoryNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEmailRegex: pulumi.Input.fromValue(map['isEmailRegex'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

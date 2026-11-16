// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailSecurityImpersonationRegistry resources.
class EmailSecurityImpersonationRegistryState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Optional note describing the entry.
  final pulumi.Input<String?>? comments;
  final pulumi.Input<String?>? createdAt;
  /// Identifier of the directory the entry was synced from, when directory-synced.
  final pulumi.Input<int?>? directoryId;
  /// Identifier of the directory node the entry was synced from, when directory-synced.
  final pulumi.Input<int?>? directoryNodeId;
  /// Email address (or pattern) of the protected identity.
  final pulumi.Input<String?>? email;
  /// Deprecated. External identifier of the directory node.
  final pulumi.Input<String?>? externalDirectoryNodeId;
  /// Whether `email` is a regular expression instead of a literal address.
  final pulumi.Input<bool?>? isEmailRegex;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String?>? lastModified;
  final pulumi.Input<String?>? modifiedAt;
  /// Display name of the protected identity.
  final pulumi.Input<String?>? name;
  /// Source the entry was created from.
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String?>? provenance;

  /// Creates a new [EmailSecurityImpersonationRegistryState].
  /// [accountId] Identifier.
  /// [comments] Optional note describing the entry.
  /// [createdAt] Optional.
  /// [directoryId] Identifier of the directory the entry was synced from, when directory-synced.
  /// [directoryNodeId] Identifier of the directory node the entry was synced from, when directory-synced.
  /// [email] Email address (or pattern) of the protected identity.
  /// [externalDirectoryNodeId] Deprecated. External identifier of the directory node.
  /// [isEmailRegex] Whether `email` is a regular expression instead of a literal address.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [name] Display name of the protected identity.
  /// [provenance] Source the entry was created from.
  const EmailSecurityImpersonationRegistryState({
    this.accountId,
    this.comments,
    this.createdAt,
    this.directoryId,
    this.directoryNodeId,
    this.email,
    this.externalDirectoryNodeId,
    this.isEmailRegex,
    this.lastModified,
    this.modifiedAt,
    this.name,
    this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'directoryId': ?directoryId,
      'directoryNodeId': ?directoryNodeId,
      'email': ?email,
      'externalDirectoryNodeId': ?externalDirectoryNodeId,
      'isEmailRegex': ?isEmailRegex,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'provenance': ?provenance,
    };
  }

  factory EmailSecurityImpersonationRegistryState.fromMap(Map<String, dynamic> map) {
    return EmailSecurityImpersonationRegistryState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      directoryNodeId: (() { final guardedValue = map['directoryNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalDirectoryNodeId: (() { final guardedValue = map['externalDirectoryNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEmailRegex: (() { final guardedValue = map['isEmailRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

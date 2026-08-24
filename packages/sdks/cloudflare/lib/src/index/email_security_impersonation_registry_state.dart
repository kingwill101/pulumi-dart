// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailSecurityImpersonationRegistry resources.
class EmailSecurityImpersonationRegistryState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? comments;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<int?>? directoryId;
  final pulumi.Input<int?>? directoryNodeId;
  final pulumi.Input<String?>? email;
  final pulumi.Input<String?>? externalDirectoryNodeId;
  final pulumi.Input<bool?>? isEmailRegex;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String?>? lastModified;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? name;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String?>? provenance;

  /// Creates a new [EmailSecurityImpersonationRegistryState].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [directoryId] Optional.
  /// [directoryNodeId] Optional.
  /// [email] Optional.
  /// [externalDirectoryNodeId] Optional.
  /// [isEmailRegex] Optional.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [name] Optional.
  /// [provenance] Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
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
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      directoryNodeId: (() { final guardedValue = map['directoryNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
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

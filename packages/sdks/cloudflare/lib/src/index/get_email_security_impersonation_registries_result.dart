// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityImpersonationRegistriesResult {
  /// Optional note describing the entry.
  final pulumi.Input<String> comments;
  final pulumi.Input<String> createdAt;
  /// Identifier of the directory the entry was synced from, when directory-synced.
  final pulumi.Input<int> directoryId;
  /// Identifier of the directory node the entry was synced from, when directory-synced.
  final pulumi.Input<int> directoryNodeId;
  /// Email address (or pattern) of the protected identity.
  final pulumi.Input<String> email;
  /// Deprecated. External identifier of the directory node.
  final pulumi.Input<String> externalDirectoryNodeId;
  /// Impersonation registry entry identifier
  final pulumi.Input<String> id;
  /// Whether `email` is a regular expression instead of a literal address.
  final pulumi.Input<bool> isEmailRegex;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String> lastModified;
  final pulumi.Input<String> modifiedAt;
  /// Display name of the protected identity.
  final pulumi.Input<String> name;
  /// Source the entry was created from.
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String> provenance;

  /// Creates a new [GetEmailSecurityImpersonationRegistriesResult].
  /// [comments] Optional note describing the entry.
  /// [createdAt] Required.
  /// [directoryId] Identifier of the directory the entry was synced from, when directory-synced.
  /// [directoryNodeId] Identifier of the directory node the entry was synced from, when directory-synced.
  /// [email] Email address (or pattern) of the protected identity.
  /// [externalDirectoryNodeId] Deprecated. External identifier of the directory node.
  /// [id] Impersonation registry entry identifier
  /// [isEmailRegex] Whether `email` is a regular expression instead of a literal address.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Required.
  /// [name] Display name of the protected identity.
  /// [provenance] Source the entry was created from.
  const GetEmailSecurityImpersonationRegistriesResult({
    required this.comments,
    required this.createdAt,
    required this.directoryId,
    required this.directoryNodeId,
    required this.email,
    required this.externalDirectoryNodeId,
    required this.id,
    required this.isEmailRegex,
    required this.lastModified,
    required this.modifiedAt,
    required this.name,
    required this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'createdAt': createdAt,
      'directoryId': directoryId,
      'directoryNodeId': directoryNodeId,
      'email': email,
      'externalDirectoryNodeId': externalDirectoryNodeId,
      'id': id,
      'isEmailRegex': isEmailRegex,
      'lastModified': lastModified,
      'modifiedAt': modifiedAt,
      'name': name,
      'provenance': provenance,
    };
  }

  factory GetEmailSecurityImpersonationRegistriesResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityImpersonationRegistriesResult(
      comments: pulumi.Input.fromValue(map['comments'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      directoryId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['directoryId'])),
      directoryNodeId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['directoryNodeId'])),
      email: pulumi.Input.fromValue(map['email'] as String),
      externalDirectoryNodeId: pulumi.Input.fromValue(map['externalDirectoryNodeId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isEmailRegex: pulumi.Input.fromValue(map['isEmailRegex'] as bool),
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      provenance: pulumi.Input.fromValue(map['provenance'] as String),
    );
  }
}

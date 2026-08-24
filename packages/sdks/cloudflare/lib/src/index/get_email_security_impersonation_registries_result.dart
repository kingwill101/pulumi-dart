// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityImpersonationRegistriesResult {
  final pulumi.Input<String> comments;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<int> directoryId;
  final pulumi.Input<int> directoryNodeId;
  final pulumi.Input<String> email;
  final pulumi.Input<String> externalDirectoryNodeId;
  /// Impersonation registry entry identifier
  final pulumi.Input<String> id;
  final pulumi.Input<bool> isEmailRegex;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final pulumi.Input<String> lastModified;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> name;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String> provenance;

  /// Creates a new [GetEmailSecurityImpersonationRegistriesResult].
  /// [comments] Required.
  /// [createdAt] Required.
  /// [directoryId] Required.
  /// [directoryNodeId] Required.
  /// [email] Required.
  /// [externalDirectoryNodeId] Required.
  /// [id] Impersonation registry entry identifier
  /// [isEmailRegex] Required.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Required.
  /// [name] Required.
  /// [provenance] Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
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
      directoryId: pulumi.Input.fromValue((map['directoryId'] as num).toInt()),
      directoryNodeId: pulumi.Input.fromValue((map['directoryNodeId'] as num).toInt()),
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

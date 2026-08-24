// ignore_for_file: unused_element, unnecessary_cast

import 'get_email_security_impersonation_registry_filter.dart';

/// Result data returned by getEmailSecurityImpersonationRegistry.
class GetEmailSecurityImpersonationRegistryResult {
  /// Identifier.
  final String? accountId;
  final String? comments;
  final String? createdAt;
  final int? directoryId;
  final int? directoryNodeId;
  final String? email;
  final String? externalDirectoryNodeId;
  final GetEmailSecurityImpersonationRegistryFilter? filter;
  /// Impersonation registry entry identifier
  final String? id;
  /// Impersonation registry entry identifier
  final String? impersonationRegistryId;
  final bool? isEmailRegex;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  final String? lastModified;
  final String? modifiedAt;
  final String? name;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final String? provenance;

  /// Creates a new [GetEmailSecurityImpersonationRegistryResult].
  /// [accountId] Identifier.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [directoryId] Optional.
  /// [directoryNodeId] Optional.
  /// [email] Optional.
  /// [externalDirectoryNodeId] Optional.
  /// [filter] Optional.
  /// [id] Impersonation registry entry identifier
  /// [impersonationRegistryId] Impersonation registry entry identifier
  /// [isEmailRegex] Optional.
  /// [lastModified] Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  /// [modifiedAt] Optional.
  /// [name] Optional.
  /// [provenance] Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  const GetEmailSecurityImpersonationRegistryResult({
    this.accountId,
    this.comments,
    this.createdAt,
    this.directoryId,
    this.directoryNodeId,
    this.email,
    this.externalDirectoryNodeId,
    this.filter,
    this.id,
    this.impersonationRegistryId,
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
      'filter': ?filter?.toMap(),
      'id': ?id,
      'impersonationRegistryId': ?impersonationRegistryId,
      'isEmailRegex': ?isEmailRegex,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'provenance': ?provenance,
    };
  }

  factory GetEmailSecurityImpersonationRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityImpersonationRegistryResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      directoryNodeId: (() { final guardedValue = map['directoryNodeId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalDirectoryNodeId: (() { final guardedValue = map['externalDirectoryNodeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetEmailSecurityImpersonationRegistryFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      impersonationRegistryId: (() { final guardedValue = map['impersonationRegistryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEmailRegex: (() { final guardedValue = map['isEmailRegex']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

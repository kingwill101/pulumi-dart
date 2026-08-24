// ignore_for_file: unused_element, unnecessary_cast

import 'get_email_security_block_sender_filter.dart';

/// Result data returned by getEmailSecurityBlockSender.
class GetEmailSecurityBlockSenderResult {
  final String? accountId;
  final String? comments;
  final String? createdAt;
  final GetEmailSecurityBlockSenderFilter? filter;
  final String? id;
  final bool? isRegex;
  final String? lastModified;
  final String? modifiedAt;
  final String? pattern;
  final String? patternId;
  final String? patternType;

  /// Creates a new [GetEmailSecurityBlockSenderResult].
  /// [accountId] Optional.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] Optional.
  /// [isRegex] Optional.
  /// [lastModified] Optional.
  /// [modifiedAt] Optional.
  /// [pattern] Optional.
  /// [patternId] Optional.
  /// [patternType] Optional.
  const GetEmailSecurityBlockSenderResult({
    this.accountId,
    this.comments,
    this.createdAt,
    this.filter,
    this.id,
    this.isRegex,
    this.lastModified,
    this.modifiedAt,
    this.pattern,
    this.patternId,
    this.patternType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'isRegex': ?isRegex,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'pattern': ?pattern,
      'patternId': ?patternId,
      'patternType': ?patternType,
    };
  }

  factory GetEmailSecurityBlockSenderResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityBlockSenderResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetEmailSecurityBlockSenderFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isRegex: (() { final guardedValue = map['isRegex']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      patternId: (() { final guardedValue = map['patternId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

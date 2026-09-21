// ignore_for_file: unused_element, unnecessary_cast

import 'get_email_security_allow_policy_filter.dart';

/// Result data returned by getEmailSecurityAllowPolicy.
class GetEmailSecurityAllowPolicyResult {
  final String? accountId;
  final String? comments;
  final String? createdAt;
  final GetEmailSecurityAllowPolicyFilter? filter;
  final String? id;
  final bool? isAcceptableSender;
  final bool? isExemptRecipient;
  final bool? isRecipient;
  final bool? isRegex;
  final bool? isSender;
  final bool? isSpoof;
  final bool? isTrustedSender;
  final String? lastModified;
  final String? modifiedAt;
  final String? pattern;
  final String? patternType;
  final String? policyId;
  final bool? verifySender;

  /// Creates a new [GetEmailSecurityAllowPolicyResult].
  /// [accountId] Optional.
  /// [comments] Optional.
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] Optional.
  /// [isAcceptableSender] Optional.
  /// [isExemptRecipient] Optional.
  /// [isRecipient] Optional.
  /// [isRegex] Optional.
  /// [isSender] Optional.
  /// [isSpoof] Optional.
  /// [isTrustedSender] Optional.
  /// [lastModified] Optional.
  /// [modifiedAt] Optional.
  /// [pattern] Optional.
  /// [patternType] Optional.
  /// [policyId] Optional.
  /// [verifySender] Optional.
  const GetEmailSecurityAllowPolicyResult({
    this.accountId,
    this.comments,
    this.createdAt,
    this.filter,
    this.id,
    this.isAcceptableSender,
    this.isExemptRecipient,
    this.isRecipient,
    this.isRegex,
    this.isSender,
    this.isSpoof,
    this.isTrustedSender,
    this.lastModified,
    this.modifiedAt,
    this.pattern,
    this.patternType,
    this.policyId,
    this.verifySender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'isAcceptableSender': ?isAcceptableSender,
      'isExemptRecipient': ?isExemptRecipient,
      'isRecipient': ?isRecipient,
      'isRegex': ?isRegex,
      'isSender': ?isSender,
      'isSpoof': ?isSpoof,
      'isTrustedSender': ?isTrustedSender,
      'lastModified': ?lastModified,
      'modifiedAt': ?modifiedAt,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'policyId': ?policyId,
      'verifySender': ?verifySender,
    };
  }

  factory GetEmailSecurityAllowPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityAllowPolicyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetEmailSecurityAllowPolicyFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isAcceptableSender: (() { final guardedValue = map['isAcceptableSender']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isExemptRecipient: (() { final guardedValue = map['isExemptRecipient']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isRecipient: (() { final guardedValue = map['isRecipient']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isRegex: (() { final guardedValue = map['isRegex']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSender: (() { final guardedValue = map['isSender']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSpoof: (() { final guardedValue = map['isSpoof']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isTrustedSender: (() { final guardedValue = map['isTrustedSender']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verifySender: (() { final guardedValue = map['verifySender']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

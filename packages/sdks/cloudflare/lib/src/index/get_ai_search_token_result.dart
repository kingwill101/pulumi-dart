// ignore_for_file: unused_element, unnecessary_cast

import 'get_ai_search_token_filter.dart';

/// Result data returned by getAiSearchToken.
class GetAiSearchTokenResult {
  final String? accountId;
  final String? cfApiId;
  final String? createdAt;
  final String? createdBy;
  final bool? enabled;
  final GetAiSearchTokenFilter? filter;
  /// The ID of this resource.
  final String? id;
  final bool? legacy;
  final String? modifiedAt;
  final String? modifiedBy;
  final String? name;

  /// Creates a new [GetAiSearchTokenResult].
  /// [accountId] Optional.
  /// [cfApiId] Optional.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [enabled] Optional.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [legacy] Optional.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Optional.
  const GetAiSearchTokenResult({
    this.accountId,
    this.cfApiId,
    this.createdAt,
    this.createdBy,
    this.enabled,
    this.filter,
    this.id,
    this.legacy,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cfApiId': ?cfApiId,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'enabled': ?enabled,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'legacy': ?legacy,
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'name': ?name,
    };
  }

  factory GetAiSearchTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchTokenResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cfApiId: (() { final guardedValue = map['cfApiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAiSearchTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      legacy: (() { final guardedValue = map['legacy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_token_filter.dart';

/// {@template pulumi_index_get_ai_search_token_get_ai_search_token_args_doc}
/// Arguments for getAiSearchToken.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_search_token_get_ai_search_token_args_doc}
class GetAiSearchTokenArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAiSearchTokenFilter?>? filter;
  /// The ID of this resource.
  final pulumi.Input<String?>? id;

  /// Creates a new [GetAiSearchTokenArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  const GetAiSearchTokenArgs({
    this.accountId,
    this.filter,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAiSearchTokenFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory GetAiSearchTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSearchTokenArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAiSearchTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

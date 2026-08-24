// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_filter.dart';

/// {@template pulumi_index_get_ai_search_instance_get_ai_search_instance_args_doc}
/// Arguments for getAiSearchInstance.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_search_instance_get_ai_search_instance_args_doc}
class GetAiSearchInstanceArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAiSearchInstanceFilter?>? filter;
  /// The ID of this resource.
  final pulumi.Input<String?>? id;

  /// Creates a new [GetAiSearchInstanceArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  const GetAiSearchInstanceArgs({
    this.accountId,
    this.filter,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAiSearchInstanceFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory GetAiSearchInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAiSearchInstanceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_scripts_filter.dart';
import 'get_stack_scripts_stackscript.dart';

/// Result data returned by getStackScripts.
class GetStackScriptsResult {
  final List<GetStackScriptsFilter>? filters;
  /// The unique ID of the StackScript.
  final String id;
  final bool? latest;
  final String? order;
  final String? orderBy;
  final List<GetStackScriptsStackscript> stackscripts;

  /// Creates a new [GetStackScriptsResult].
  /// [filters] Optional.
  /// [id] The unique ID of the StackScript.
  /// [latest] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [stackscripts] Required.
  GetStackScriptsResult({
    this.filters,
    required this.id,
    this.latest,
    this.order,
    this.orderBy,
    required this.stackscripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetStackScriptsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
      'stackscripts': pulumi.Input.encodeList<GetStackScriptsStackscript, Map<String, dynamic>>(stackscripts, (value) => value.toMap()),
    };
  }

  factory GetStackScriptsResult.fromMap(Map<String, dynamic> map) {
    return GetStackScriptsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetStackScriptsFilter>(map['filters']!, (value) => GetStackScriptsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      latest: map['latest'] == null ? null : map['latest']! as bool,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      stackscripts: pulumi.Input.decodeList<GetStackScriptsStackscript>(map['stackscripts'], (value) => GetStackScriptsStackscript.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


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
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetStackScriptsFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
      'stackscripts':
          pulumi.Input.encodeList<
            GetStackScriptsStackscript,
            Map<String, dynamic>
          >(stackscripts, (value) => value.toMap()),
    };
  }

  factory GetStackScriptsResult.fromMap(Map<String, dynamic> map) {
    return GetStackScriptsResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetStackScriptsFilter>(
          guardedValue,
          (value) => GetStackScriptsFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      latest: (() {
        final guardedValue = map['latest'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      stackscripts: pulumi.Input.decodeList<GetStackScriptsStackscript>(
        map['stackscripts']!,
        (value) => GetStackScriptsStackscript.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_body.dart';

/// {@template pulumi_index_filter_filter_args_doc}
/// The set of arguments for Filter.
/// {@endtemplate}
/// {@macro pulumi_index_filter_filter_args_doc}
class FilterArgs {
  final pulumi.Input<List<FilterBody>> bodies;
  /// An informative summary of the filter.
  final pulumi.Input<String?>? description;
  /// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  final pulumi.Input<String?>? expression;
  /// When true, indicates that the filter is currently paused.
  final pulumi.Input<bool?>? paused;
  /// A short reference tag. Allows you to select related filters.
  final pulumi.Input<String?>? ref;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [FilterArgs].
  /// [bodies] Required.
  /// [description] An informative summary of the filter.
  /// [expression] The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] A short reference tag. Allows you to select related filters.
  /// [zoneId] Defines an identifier.
  const FilterArgs({
    required this.bodies,
    this.description,
    this.expression,
    this.paused,
    this.ref,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodies': pulumi.Input.mapInputValue<List<FilterBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<FilterBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'expression': ?expression,
      'paused': ?paused,
      'ref': ?ref,
      'zoneId': zoneId,
    };
  }

  factory FilterArgs.fromMap(Map<String, dynamic> map) {
    return FilterArgs(
      bodies: pulumi.Input.fromValue(pulumi.Input.decodeList<FilterBody>(map['bodies']!, (value) => FilterBody.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

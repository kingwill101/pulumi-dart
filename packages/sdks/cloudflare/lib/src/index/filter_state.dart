// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_body.dart';

/// Input properties used for looking up and filtering Filter resources.
class FilterState {
  final pulumi.Input<List<FilterBody>?>? bodies;
  /// An informative summary of the filter.
  final pulumi.Input<String?>? description;
  /// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  final pulumi.Input<String?>? expression;
  /// When true, indicates that the filter is currently paused.
  final pulumi.Input<bool?>? paused;
  /// A short reference tag. Allows you to select related filters.
  final pulumi.Input<String?>? ref;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [FilterState].
  /// [bodies] Optional.
  /// [description] An informative summary of the filter.
  /// [expression] The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] A short reference tag. Allows you to select related filters.
  /// [zoneId] Defines an identifier.
  const FilterState({
    this.bodies,
    this.description,
    this.expression,
    this.paused,
    this.ref,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodies': ?pulumi.Input.mapOptionalInputValue<List<FilterBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<FilterBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'expression': ?expression,
      'paused': ?paused,
      'ref': ?ref,
      'zoneId': ?zoneId,
    };
  }

  factory FilterState.fromMap(Map<String, dynamic> map) {
    return FilterState(
      bodies: (() { final guardedValue = map['bodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterBody>(guardedValue, (value) => FilterBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

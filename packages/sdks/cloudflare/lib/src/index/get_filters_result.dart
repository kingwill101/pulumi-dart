// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFiltersResult {
  /// An informative summary of the filter.
  final pulumi.Input<String> description;
  /// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  final pulumi.Input<String> expression;
  /// The unique identifier of the filter.
  final pulumi.Input<String> id;
  /// When true, indicates that the filter is currently paused.
  final pulumi.Input<bool> paused;
  /// A short reference tag. Allows you to select related filters.
  final pulumi.Input<String> ref;

  /// Creates a new [GetFiltersResult].
  /// [description] An informative summary of the filter.
  /// [expression] The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  /// [id] The unique identifier of the filter.
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] A short reference tag. Allows you to select related filters.
  const GetFiltersResult({
    required this.description,
    required this.expression,
    required this.id,
    required this.paused,
    required this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expression': expression,
      'id': id,
      'paused': paused,
      'ref': ref,
    };
  }

  factory GetFiltersResult.fromMap(Map<String, dynamic> map) {
    return GetFiltersResult(
      description: pulumi.Input.fromValue(map['description'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
      ref: pulumi.Input.fromValue(map['ref'] as String),
    );
  }
}

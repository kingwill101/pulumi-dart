// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetElasticsearchLogFilteringTag {
  /// The type of action which is taken when the Tag matches the `name` and `value`.
  final pulumi.Input<String> action;
  /// The name of the Elasticsearch resource.
  final pulumi.Input<String> name;
  /// The value of the Tag which should be filtered.
  final pulumi.Input<String> value;

  /// Creates a new [GetElasticsearchLogFilteringTag].
  /// [action] The type of action which is taken when the Tag matches the `name` and `value`.
  /// [name] The name of the Elasticsearch resource.
  /// [value] The value of the Tag which should be filtered.
  GetElasticsearchLogFilteringTag({
    required this.action,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'value': value,
    };
  }

  factory GetElasticsearchLogFilteringTag.fromMap(Map<String, dynamic> map) {
    return GetElasticsearchLogFilteringTag(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}


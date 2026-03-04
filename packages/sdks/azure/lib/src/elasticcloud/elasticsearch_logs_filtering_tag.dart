// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ElasticsearchLogsFilteringTag {
  /// Specifies the type of action which should be taken when the Tag matches the `name` and `value`. Possible values are `Exclude` and `Include`.
  final pulumi.Input<String> action;

  /// Specifies the name (key) of the Tag which should be filtered.
  final pulumi.Input<String> name;

  /// Specifies the value of the Tag which should be filtered.
  final pulumi.Input<String> value;

  /// Creates a new [ElasticsearchLogsFilteringTag].
  /// [action] Specifies the type of action which should be taken when the Tag matches the `name` and `value`. Possible values are `Exclude` and `Include`.
  /// [name] Specifies the name (key) of the Tag which should be filtered.
  /// [value] Specifies the value of the Tag which should be filtered.
  ElasticsearchLogsFilteringTag({
    required this.action,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': action, 'name': name, 'value': value};
  }

  factory ElasticsearchLogsFilteringTag.fromMap(Map<String, dynamic> map) {
    return ElasticsearchLogsFilteringTag(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

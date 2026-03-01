// ignore_for_file: unused_element, unnecessary_cast


class GetElasticsearchLogFilteringTag {
  /// The type of action which is taken when the Tag matches the `name` and `value`.
  final String action;
  /// The name of the Elasticsearch resource.
  final String name;
  /// The value of the Tag which should be filtered.
  final String value;

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
      action: map['action'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}


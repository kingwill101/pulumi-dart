// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardVariableItem {
  /// (Optional) A human-friendly display string for this value.
  final pulumi.Input<String>? title;
  /// (Required) A possible variable value
  final pulumi.Input<String> value;

  /// Creates a new [OneDashboardVariableItem].
  /// [title] (Optional) A human-friendly display string for this value.
  /// [value] (Required) A possible variable value
  const OneDashboardVariableItem({
    this.title,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': ?title,
      'value': value,
    };
  }

  factory OneDashboardVariableItem.fromMap(Map<String, dynamic> map) {
    return OneDashboardVariableItem(
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthomationRuleActionIncidentTask {
  /// The description of the incident task.
  final pulumi.Input<String>? description;
  /// The execution order of this action.
  final pulumi.Input<int> order;
  /// The title of the incident task.
  final pulumi.Input<String> title;

  /// Creates a new [AuthomationRuleActionIncidentTask].
  /// [description] The description of the incident task.
  /// [order] The execution order of this action.
  /// [title] The title of the incident task.
  const AuthomationRuleActionIncidentTask({
    this.description,
    required this.order,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'order': order,
      'title': title,
    };
  }

  factory AuthomationRuleActionIncidentTask.fromMap(Map<String, dynamic> map) {
    return AuthomationRuleActionIncidentTask(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as int),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

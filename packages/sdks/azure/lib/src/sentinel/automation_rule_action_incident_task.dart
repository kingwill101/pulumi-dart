// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleActionIncidentTask {
  /// The description of the incident task.
  final pulumi.Input<String?>? description;
  /// The execution order of this action.
  final pulumi.Input<int> order;
  /// The title of the incident task.
  final pulumi.Input<String> title;

  /// Creates a new [AutomationRuleActionIncidentTask].
  /// [description] The description of the incident task.
  /// [order] The execution order of this action.
  /// [title] The title of the incident task.
  const AutomationRuleActionIncidentTask({
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

  factory AutomationRuleActionIncidentTask.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionIncidentTask(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue((map['order'] as num).toInt()),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

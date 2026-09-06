// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an automation rule action to add a task to an incident.
class AddIncidentTaskActionPropertiesResponse {
  /// The description of the task.
  final pulumi.Input<String?>? description;
  /// The title of the task.
  final pulumi.Input<String> title;

  /// Creates a new [AddIncidentTaskActionPropertiesResponse].
  /// [description] The description of the task.
  /// [title] The title of the task.
  const AddIncidentTaskActionPropertiesResponse({
    this.description,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'title': title,
    };
  }

  factory AddIncidentTaskActionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddIncidentTaskActionPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_descriptor_response.dart';

/// A description of a log type. Example in YAML format: - name: library.googleapis.com/activity_history description: The history of borrowing and returning library items. display_name: Activity labels: - key: /customer_id description: Identifier of a library customer
class LogDescriptorResponse {
  /// A human-readable description of this log. This information appears in the documentation and can contain details.
  final String description;
  /// The human-readable name for this log. This information appears on the user interface and should be concise.
  final String displayName;
  /// The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.
  final List<LabelDescriptorResponse> labels;
  /// The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [/_-.].
  final String name;

  /// Creates a new [LogDescriptorResponse].
  /// [description] A human-readable description of this log. This information appears in the documentation and can contain details.
  /// [displayName] The human-readable name for this log. This information appears on the user interface and should be concise.
  /// [labels] The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.
  /// [name] The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [/_-.].
  LogDescriptorResponse({
    required this.description,
    required this.displayName,
    required this.labels,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'labels': pulumi.Input.encodeList<LabelDescriptorResponse, Map<String, dynamic>>(labels, (value) => value.toMap()),
      'name': name,
    };
  }

  factory LogDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return LogDescriptorResponse(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      labels: pulumi.Input.decodeList<LabelDescriptorResponse>(map['labels'], (value) => LabelDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}


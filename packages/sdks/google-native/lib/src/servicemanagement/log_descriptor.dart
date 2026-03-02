// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_descriptor.dart';

/// A description of a log type. Example in YAML format: - name: library.googleapis.com/activity_history description: The history of borrowing and returning library items. display_name: Activity labels: - key: /customer_id description: Identifier of a library customer
class LogDescriptor {
  /// A human-readable description of this log. This information appears in the documentation and can contain details.
  final pulumi.Input<String>? description;
  /// The human-readable name for this log. This information appears on the user interface and should be concise.
  final pulumi.Input<String>? displayName;
  /// The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.
  final pulumi.Input<List<LabelDescriptor>>? labels;
  /// The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [/_-.].
  final pulumi.Input<String>? name;

  /// Creates a new [LogDescriptor].
  /// [description] A human-readable description of this log. This information appears in the documentation and can contain details.
  /// [displayName] The human-readable name for this log. This information appears on the user interface and should be concise.
  /// [labels] The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.
  /// [name] The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [/_-.].
  LogDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<LabelDescriptor>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<LabelDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory LogDescriptor.fromMap(Map<String, dynamic> map) {
    return LogDescriptor(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<LabelDescriptor>(map['labels'], (value) => LabelDescriptor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


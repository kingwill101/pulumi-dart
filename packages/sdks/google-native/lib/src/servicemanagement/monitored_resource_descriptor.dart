// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_descriptor.dart';
import 'monitored_resource_descriptor_launch_stage.dart';

/// An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of `"gce_instance"` and specifies the use of the labels `"instance_id"` and `"zone"` to identify particular VM instances. Different APIs can support different monitored resource types. APIs generally provide a `list` method that returns the monitored resource descriptors used by the API.
class MonitoredResourceDescriptor {
  /// Optional. A detailed description of the monitored resource type that might be used in documentation.
  final pulumi.Input<String>? description;
  /// Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, `"Google Cloud SQL Database"`.
  final pulumi.Input<String>? displayName;
  /// A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels `"database_id"` and `"zone"`.
  final pulumi.Input<List<LabelDescriptor>> labels;
  /// Optional. The launch stage of the monitored resource definition.
  final pulumi.Input<MonitoredResourceDescriptorLaunchStage>? launchStage;
  /// Optional. The resource name of the monitored resource descriptor: `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where {type} is the value of the `type` field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format `"monitoredResourceDescriptors/{type}"`.
  final pulumi.Input<String>? name;
  /// The monitored resource type. For example, the type `"cloudsql_database"` represents databases in Google Cloud SQL. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  final pulumi.Input<String> type;

  /// Creates a new [MonitoredResourceDescriptor].
  /// [description] Optional. A detailed description of the monitored resource type that might be used in documentation.
  /// [displayName] Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, `"Google Cloud SQL Database"`.
  /// [labels] A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels `"database_id"` and `"zone"`.
  /// [launchStage] Optional. The launch stage of the monitored resource definition.
  /// [name] Optional. The resource name of the monitored resource descriptor: `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where {type} is the value of the `type` field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format `"monitoredResourceDescriptors/{type}"`.
  /// [type] The monitored resource type. For example, the type `"cloudsql_database"` represents databases in Google Cloud SQL. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  const MonitoredResourceDescriptor({
    this.description,
    this.displayName,
    required this.labels,
    this.launchStage,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'labels': pulumi.Input.mapInputValue<List<LabelDescriptor>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<LabelDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchStage': ?pulumi.Input.mapOptionalInputValue<MonitoredResourceDescriptorLaunchStage, String>(launchStage, (value) => value.wireValue),
      'name': ?name,
      'type': type,
    };
  }

  factory MonitoredResourceDescriptor.fromMap(Map<String, dynamic> map) {
    return MonitoredResourceDescriptor(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: pulumi.Input.fromValue(pulumi.Input.decodeList<LabelDescriptor>(map['labels']!, (value) => LabelDescriptor.fromMap((value as Map).cast<String, dynamic>()))),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoredResourceDescriptorLaunchStage.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_build_config.dart';
import 'get_function_event_trigger.dart';
import 'get_function_service_config.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  final List<GetFunctionBuildConfig> buildConfigs;
  final String description;
  final Map<String, String> effectiveLabels;
  final String environment;
  final List<GetFunctionEventTrigger> eventTriggers;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetFunctionServiceConfig> serviceConfigs;
  final String state;
  final String updateTime;
  final String url;

  /// Creates a new [GetFunctionResult].
  /// [buildConfigs] Required.
  /// [description] Required.
  /// [effectiveLabels] Required.
  /// [environment] Required.
  /// [eventTriggers] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [serviceConfigs] Required.
  /// [state] Required.
  /// [updateTime] Required.
  /// [url] Required.
  GetFunctionResult({
    required this.buildConfigs,
    required this.description,
    required this.effectiveLabels,
    required this.environment,
    required this.eventTriggers,
    required this.id,
    required this.kmsKeyName,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.serviceConfigs,
    required this.state,
    required this.updateTime,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfigs': pulumi.Input.encodeList<GetFunctionBuildConfig, Map<String, dynamic>>(buildConfigs, (value) => value.toMap()),
      'description': description,
      'effectiveLabels': effectiveLabels,
      'environment': environment,
      'eventTriggers': pulumi.Input.encodeList<GetFunctionEventTrigger, Map<String, dynamic>>(eventTriggers, (value) => value.toMap()),
      'id': id,
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'location': location,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'serviceConfigs': pulumi.Input.encodeList<GetFunctionServiceConfig, Map<String, dynamic>>(serviceConfigs, (value) => value.toMap()),
      'state': state,
      'updateTime': updateTime,
      'url': url,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      buildConfigs: pulumi.Input.decodeList<GetFunctionBuildConfig>(map['buildConfigs'], (value) => GetFunctionBuildConfig.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      environment: map['environment'] as String,
      eventTriggers: pulumi.Input.decodeList<GetFunctionEventTrigger>(map['eventTriggers'], (value) => GetFunctionEventTrigger.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      serviceConfigs: pulumi.Input.decodeList<GetFunctionServiceConfig>(map['serviceConfigs'], (value) => GetFunctionServiceConfig.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      url: map['url'] as String,
    );
  }
}


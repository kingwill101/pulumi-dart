// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_build_config.dart';
import 'get_function_event_trigger.dart';
import 'get_function_service_config.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  final List<GetFunctionBuildConfig>? buildConfigs;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final String? environment;
  final List<GetFunctionEventTrigger>? eventTriggers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyName;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetFunctionServiceConfig>? serviceConfigs;
  final String? state;
  final String? updateTime;
  final String? url;

  /// Creates a new [GetFunctionResult].
  /// [buildConfigs] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [environment] Optional.
  /// [eventTriggers] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [serviceConfigs] Optional.
  /// [state] Optional.
  /// [updateTime] Optional.
  /// [url] Optional.
  const GetFunctionResult({
    this.buildConfigs,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.environment,
    this.eventTriggers,
    this.id,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serviceConfigs,
    this.state,
    this.updateTime,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfigs': ?(() { final guardedValue = buildConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionBuildConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'environment': ?environment,
      'eventTriggers': ?(() { final guardedValue = eventTriggers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionEventTrigger, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceConfigs': ?(() { final guardedValue = serviceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionServiceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'updateTime': ?updateTime,
      'url': ?url,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      buildConfigs: (() { final guardedValue = map['buildConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionBuildConfig>(guardedValue, (value) => GetFunctionBuildConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventTriggers: (() { final guardedValue = map['eventTriggers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionEventTrigger>(guardedValue, (value) => GetFunctionEventTrigger.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      serviceConfigs: (() { final guardedValue = map['serviceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionServiceConfig>(guardedValue, (value) => GetFunctionServiceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

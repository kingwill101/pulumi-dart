// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timeseriesinsights_get_event_hub_event_source_args_doc}
/// Arguments for getEventHubEventSource.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_get_event_hub_event_source_args_doc}
class GetEventHubEventSourceArgs {
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// The name of the Time Series Insights event source associated with the specified environment.
  final pulumi.Input<String> eventSourceName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEventHubEventSourceArgs].
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [eventSourceName] The name of the Time Series Insights event source associated with the specified environment.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetEventHubEventSourceArgs({
    required this.environmentName,
    required this.eventSourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'eventSourceName': eventSourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventHubEventSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetEventHubEventSourceArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      eventSourceName: pulumi.Input.fromValue(map['eventSourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


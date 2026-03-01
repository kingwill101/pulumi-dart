// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timeseriesinsights_get_io_thub_event_source_args_doc}
/// Arguments for getIoTHubEventSource.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_get_io_thub_event_source_args_doc}
class GetIoTHubEventSourceArgs {
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// The name of the Time Series Insights event source associated with the specified environment.
  final pulumi.Input<String> eventSourceName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIoTHubEventSourceArgs].
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [eventSourceName] The name of the Time Series Insights event source associated with the specified environment.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetIoTHubEventSourceArgs({
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> eventSourceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      eventSourceName = pulumi.Input.asInput<String>(eventSourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'eventSourceName': eventSourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIoTHubEventSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetIoTHubEventSourceArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      eventSourceName: pulumi.Output.create<String>(map['eventSourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_identity.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The compatibility level for this job.
  final String compatibilityLevel;
  /// The Data Locale of the Job.
  final String dataLocale;
  /// The maximum tolerable delay in seconds where events arriving late could be included.
  final int eventsLateArrivalMaxDelayInSeconds;
  /// The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  final int eventsOutOfOrderMaxDelayInSeconds;
  /// The policy which should be applied to events which arrive out of order in the input event stream.
  final String eventsOutOfOrderPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetJobIdentity> identities;
  /// The Job ID assigned by the Stream Analytics Job.
  final String jobId;
  /// The time at which the Stream Analytics job last produced an output.
  final String lastOutputTime;
  /// The Azure location where the Stream Analytics Job exists.
  final String location;
  final String name;
  /// The policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size).
  final String outputErrorPolicy;
  final String resourceGroupName;
  /// The SKU Name to use for the Stream Analytics Job.
  final String skuName;
  /// The starting mode set for this Stream Analytics Job.
  final String startMode;
  /// The time at which this Stream Analytics Job was scheduled to start.
  final String startTime;
  /// The number of streaming units that this Stream Analytics Job uses.
  final int streamingUnits;
  /// The query that will be run in this Stream Analytics Job, [written in Stream Analytics Query Language (SAQL)](https://msdn.microsoft.com/library/azure/dn834998).
  final String transformationQuery;

  /// Creates a new [GetJobResult].
  /// [compatibilityLevel] The compatibility level for this job.
  /// [dataLocale] The Data Locale of the Job.
  /// [eventsLateArrivalMaxDelayInSeconds] The maximum tolerable delay in seconds where events arriving late could be included.
  /// [eventsOutOfOrderMaxDelayInSeconds] The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  /// [eventsOutOfOrderPolicy] The policy which should be applied to events which arrive out of order in the input event stream.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [jobId] The Job ID assigned by the Stream Analytics Job.
  /// [lastOutputTime] The time at which the Stream Analytics job last produced an output.
  /// [location] The Azure location where the Stream Analytics Job exists.
  /// [name] Required.
  /// [outputErrorPolicy] The policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size).
  /// [resourceGroupName] Required.
  /// [skuName] The SKU Name to use for the Stream Analytics Job.
  /// [startMode] The starting mode set for this Stream Analytics Job.
  /// [startTime] The time at which this Stream Analytics Job was scheduled to start.
  /// [streamingUnits] The number of streaming units that this Stream Analytics Job uses.
  /// [transformationQuery] The query that will be run in this Stream Analytics Job, [written in Stream Analytics Query Language (SAQL)](https://msdn.microsoft.com/library/azure/dn834998).
  GetJobResult({
    required this.compatibilityLevel,
    required this.dataLocale,
    required this.eventsLateArrivalMaxDelayInSeconds,
    required this.eventsOutOfOrderMaxDelayInSeconds,
    required this.eventsOutOfOrderPolicy,
    required this.id,
    required this.identities,
    required this.jobId,
    required this.lastOutputTime,
    required this.location,
    required this.name,
    required this.outputErrorPolicy,
    required this.resourceGroupName,
    required this.skuName,
    required this.startMode,
    required this.startTime,
    required this.streamingUnits,
    required this.transformationQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': compatibilityLevel,
      'dataLocale': dataLocale,
      'eventsLateArrivalMaxDelayInSeconds': eventsLateArrivalMaxDelayInSeconds,
      'eventsOutOfOrderMaxDelayInSeconds': eventsOutOfOrderMaxDelayInSeconds,
      'eventsOutOfOrderPolicy': eventsOutOfOrderPolicy,
      'id': id,
      'identities': pulumi.Input.encodeList<GetJobIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'jobId': jobId,
      'lastOutputTime': lastOutputTime,
      'location': location,
      'name': name,
      'outputErrorPolicy': outputErrorPolicy,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'startMode': startMode,
      'startTime': startTime,
      'streamingUnits': streamingUnits,
      'transformationQuery': transformationQuery,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      compatibilityLevel: map['compatibilityLevel'] as String,
      dataLocale: map['dataLocale'] as String,
      eventsLateArrivalMaxDelayInSeconds: map['eventsLateArrivalMaxDelayInSeconds'] as int,
      eventsOutOfOrderMaxDelayInSeconds: map['eventsOutOfOrderMaxDelayInSeconds'] as int,
      eventsOutOfOrderPolicy: map['eventsOutOfOrderPolicy'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetJobIdentity>(map['identities']!, (value) => GetJobIdentity.fromMap((value as Map).cast<String, dynamic>())),
      jobId: map['jobId'] as String,
      lastOutputTime: map['lastOutputTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outputErrorPolicy: map['outputErrorPolicy'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      startMode: map['startMode'] as String,
      startTime: map['startTime'] as String,
      streamingUnits: map['streamingUnits'] as int,
      transformationQuery: map['transformationQuery'] as String,
    );
  }
}


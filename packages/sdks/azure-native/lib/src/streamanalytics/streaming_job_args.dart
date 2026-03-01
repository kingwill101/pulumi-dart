// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_info.dart';
import 'function_streamanalytics.dart';
import 'identity.dart';
import 'input_streamanalytics.dart';
import 'job_storage_account.dart';
import 'output_streamanalytics.dart';
import 'sku.dart';
import 'transformation.dart';

/// {@template pulumi_streamanalytics_streaming_job_args_doc}
/// The set of arguments for StreamingJob.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_streaming_job_args_doc}
class StreamingJobArgs {
  /// The cluster which streaming jobs will run on.
  final pulumi.Input<ClusterInfo>? cluster;
  /// Controls certain runtime behaviors of the streaming job.
  final pulumi.Input<String>? compatibilityLevel;
  /// Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
  final pulumi.Input<String>? contentStoragePolicy;
  /// The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified.
  final pulumi.Input<String>? dataLocale;
  /// The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1.
  final pulumi.Input<int>? eventsLateArrivalMaxDelayInSeconds;
  /// The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  final pulumi.Input<int>? eventsOutOfOrderMaxDelayInSeconds;
  /// Indicates the policy to apply to events that arrive out of order in the input event stream.
  final pulumi.Input<String>? eventsOutOfOrderPolicy;
  /// A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  final pulumi.Input<List<FunctionStreamanalytics>>? functions;
  /// Describes the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs.
  final pulumi.Input<Identity>? identity;
  /// A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input.
  final pulumi.Input<List<InputStreamanalytics>>? inputs;
  /// The name of the streaming job.
  final pulumi.Input<String>? jobName;
  /// The properties that are associated with an Azure Storage account with MSI
  final pulumi.Input<JobStorageAccount>? jobStorageAccount;
  /// Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
  final pulumi.Input<String>? jobType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
  final pulumi.Input<String>? outputErrorPolicy;
  /// This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
  final pulumi.Input<String>? outputStartMode;
  /// Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime.
  final pulumi.Input<String>? outputStartTime;
  /// A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output.
  final pulumi.Input<List<OutputStreamanalytics>>? outputs;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  final pulumi.Input<Transformation>? transformation;

  /// Creates a new [StreamingJobArgs].
  /// [cluster] The cluster which streaming jobs will run on.
  /// [compatibilityLevel] Controls certain runtime behaviors of the streaming job.
  /// [contentStoragePolicy] Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
  /// [dataLocale] The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified.
  /// [eventsLateArrivalMaxDelayInSeconds] The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1.
  /// [eventsOutOfOrderMaxDelayInSeconds] The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  /// [eventsOutOfOrderPolicy] Indicates the policy to apply to events that arrive out of order in the input event stream.
  /// [functions] A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  /// [identity] Describes the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs.
  /// [inputs] A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input.
  /// [jobName] The name of the streaming job.
  /// [jobStorageAccount] The properties that are associated with an Azure Storage account with MSI
  /// [jobType] Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
  /// [location] The geo-location where the resource lives
  /// [outputErrorPolicy] Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
  /// [outputStartMode] This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
  /// [outputStartTime] Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime.
  /// [outputs] A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests.
  /// [tags] Resource tags.
  /// [transformation] Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  StreamingJobArgs({
    pulumi.Output<ClusterInfo>? cluster,
    pulumi.Output<String>? compatibilityLevel,
    pulumi.Output<String>? contentStoragePolicy,
    pulumi.Output<String>? dataLocale,
    pulumi.Output<int>? eventsLateArrivalMaxDelayInSeconds,
    pulumi.Output<int>? eventsOutOfOrderMaxDelayInSeconds,
    pulumi.Output<String>? eventsOutOfOrderPolicy,
    pulumi.Output<List<FunctionStreamanalytics>>? functions,
    pulumi.Output<Identity>? identity,
    pulumi.Output<List<InputStreamanalytics>>? inputs,
    pulumi.Output<String>? jobName,
    pulumi.Output<JobStorageAccount>? jobStorageAccount,
    pulumi.Output<String>? jobType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? outputErrorPolicy,
    pulumi.Output<String>? outputStartMode,
    pulumi.Output<String>? outputStartTime,
    pulumi.Output<List<OutputStreamanalytics>>? outputs,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Transformation>? transformation,
  }) :
      cluster = pulumi.Input.asOptionalInput<ClusterInfo>(cluster),
      compatibilityLevel = pulumi.Input.asOptionalInput<String>(compatibilityLevel),
      contentStoragePolicy = pulumi.Input.asOptionalInput<String>(contentStoragePolicy),
      dataLocale = pulumi.Input.asOptionalInput<String>(dataLocale),
      eventsLateArrivalMaxDelayInSeconds = pulumi.Input.asOptionalInput<int>(eventsLateArrivalMaxDelayInSeconds),
      eventsOutOfOrderMaxDelayInSeconds = pulumi.Input.asOptionalInput<int>(eventsOutOfOrderMaxDelayInSeconds),
      eventsOutOfOrderPolicy = pulumi.Input.asOptionalInput<String>(eventsOutOfOrderPolicy),
      functions = pulumi.Input.asOptionalInput<List<FunctionStreamanalytics>>(functions),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      inputs = pulumi.Input.asOptionalInput<List<InputStreamanalytics>>(inputs),
      jobName = pulumi.Input.asOptionalInput<String>(jobName),
      jobStorageAccount = pulumi.Input.asOptionalInput<JobStorageAccount>(jobStorageAccount),
      jobType = pulumi.Input.asOptionalInput<String>(jobType),
      location = pulumi.Input.asOptionalInput<String>(location),
      outputErrorPolicy = pulumi.Input.asOptionalInput<String>(outputErrorPolicy),
      outputStartMode = pulumi.Input.asOptionalInput<String>(outputStartMode),
      outputStartTime = pulumi.Input.asOptionalInput<String>(outputStartTime),
      outputs = pulumi.Input.asOptionalInput<List<OutputStreamanalytics>>(outputs),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transformation = pulumi.Input.asOptionalInput<Transformation>(transformation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?pulumi.Input.mapOptionalInputValue<ClusterInfo, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'compatibilityLevel': ?compatibilityLevel,
      'contentStoragePolicy': ?contentStoragePolicy,
      'dataLocale': ?dataLocale,
      'eventsLateArrivalMaxDelayInSeconds': ?eventsLateArrivalMaxDelayInSeconds,
      'eventsOutOfOrderMaxDelayInSeconds': ?eventsOutOfOrderMaxDelayInSeconds,
      'eventsOutOfOrderPolicy': ?eventsOutOfOrderPolicy,
      'functions': ?functions,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inputs': ?inputs,
      'jobName': ?jobName,
      'jobStorageAccount': ?pulumi.Input.mapOptionalInputValue<JobStorageAccount, Map<String, dynamic>>(jobStorageAccount, (value) => value.toMap()),
      'jobType': ?jobType,
      'location': ?location,
      'outputErrorPolicy': ?outputErrorPolicy,
      'outputStartMode': ?outputStartMode,
      'outputStartTime': ?outputStartTime,
      'outputs': ?outputs,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'transformation': ?pulumi.Input.mapOptionalInputValue<Transformation, Map<String, dynamic>>(transformation, (value) => value.toMap()),
    };
  }

  factory StreamingJobArgs.fromMap(Map<String, dynamic> map) {
    return StreamingJobArgs(
      cluster: map['cluster'] == null ? null : pulumi.Output.create<ClusterInfo>(ClusterInfo.fromMap((map['cluster'] as Map).cast<String, dynamic>())),
      compatibilityLevel: map['compatibilityLevel'] == null ? null : pulumi.Output.create<String>(map['compatibilityLevel'] as String),
      contentStoragePolicy: map['contentStoragePolicy'] == null ? null : pulumi.Output.create<String>(map['contentStoragePolicy'] as String),
      dataLocale: map['dataLocale'] == null ? null : pulumi.Output.create<String>(map['dataLocale'] as String),
      eventsLateArrivalMaxDelayInSeconds: map['eventsLateArrivalMaxDelayInSeconds'] == null ? null : pulumi.Output.create<int>(map['eventsLateArrivalMaxDelayInSeconds'] as int),
      eventsOutOfOrderMaxDelayInSeconds: map['eventsOutOfOrderMaxDelayInSeconds'] == null ? null : pulumi.Output.create<int>(map['eventsOutOfOrderMaxDelayInSeconds'] as int),
      eventsOutOfOrderPolicy: map['eventsOutOfOrderPolicy'] == null ? null : pulumi.Output.create<String>(map['eventsOutOfOrderPolicy'] as String),
      functions: map['functions'] == null ? null : pulumi.Output.create<List<FunctionStreamanalytics>>((map['functions'] as List).cast<FunctionStreamanalytics>()),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      inputs: map['inputs'] == null ? null : pulumi.Output.create<List<InputStreamanalytics>>((map['inputs'] as List).cast<InputStreamanalytics>()),
      jobName: map['jobName'] == null ? null : pulumi.Output.create<String>(map['jobName'] as String),
      jobStorageAccount: map['jobStorageAccount'] == null ? null : pulumi.Output.create<JobStorageAccount>(JobStorageAccount.fromMap((map['jobStorageAccount'] as Map).cast<String, dynamic>())),
      jobType: map['jobType'] == null ? null : pulumi.Output.create<String>(map['jobType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      outputErrorPolicy: map['outputErrorPolicy'] == null ? null : pulumi.Output.create<String>(map['outputErrorPolicy'] as String),
      outputStartMode: map['outputStartMode'] == null ? null : pulumi.Output.create<String>(map['outputStartMode'] as String),
      outputStartTime: map['outputStartTime'] == null ? null : pulumi.Output.create<String>(map['outputStartTime'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<List<OutputStreamanalytics>>((map['outputs'] as List).cast<OutputStreamanalytics>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transformation: map['transformation'] == null ? null : pulumi.Output.create<Transformation>(Transformation.fromMap((map['transformation'] as Map).cast<String, dynamic>())),
    );
  }
}


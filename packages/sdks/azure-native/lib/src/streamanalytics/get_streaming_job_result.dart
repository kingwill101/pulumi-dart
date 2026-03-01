// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_info_response.dart';
import 'function_response.dart';
import 'identity_response.dart';
import 'input_response.dart';
import 'job_storage_account_response.dart';
import 'output_response.dart';
import 'sku_response.dart';
import 'transformation_response.dart';

/// Result data returned by getStreamingJob.
class GetStreamingJobResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The cluster which streaming jobs will run on.
  final ClusterInfoResponse? cluster;
  /// Controls certain runtime behaviors of the streaming job.
  final String? compatibilityLevel;
  /// Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
  final String? contentStoragePolicy;
  /// Value is an ISO-8601 formatted UTC timestamp indicating when the streaming job was created.
  final String createdDate;
  /// The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified.
  final String? dataLocale;
  /// The current entity tag for the streaming job. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final String etag;
  /// The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1.
  final int? eventsLateArrivalMaxDelayInSeconds;
  /// The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  final int? eventsOutOfOrderMaxDelayInSeconds;
  /// Indicates the policy to apply to events that arrive out of order in the input event stream.
  final String? eventsOutOfOrderPolicy;
  /// A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  final List<FunctionResponse>? functions;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Describes the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs.
  final IdentityResponse? identity;
  /// A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input.
  final List<InputResponse>? inputs;
  /// A GUID uniquely identifying the streaming job. This GUID is generated upon creation of the streaming job.
  final String jobId;
  /// Describes the state of the streaming job.
  final String jobState;
  /// The properties that are associated with an Azure Storage account with MSI
  final JobStorageAccountResponse? jobStorageAccount;
  /// Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
  final String? jobType;
  /// Value is either an ISO-8601 formatted timestamp indicating the last output event time of the streaming job or null indicating that output has not yet been produced. In case of multiple outputs or multiple streams, this shows the latest value in that set.
  final String lastOutputEventTime;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
  final String? outputErrorPolicy;
  /// This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
  final String? outputStartMode;
  /// Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime.
  final String? outputStartTime;
  /// A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output.
  final List<OutputResponse>? outputs;
  /// Describes the provisioning status of the streaming job.
  final String provisioningState;
  /// Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests.
  final SkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  final TransformationResponse? transformation;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetStreamingJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cluster] The cluster which streaming jobs will run on.
  /// [compatibilityLevel] Controls certain runtime behaviors of the streaming job.
  /// [contentStoragePolicy] Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
  /// [createdDate] Value is an ISO-8601 formatted UTC timestamp indicating when the streaming job was created.
  /// [dataLocale] The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified.
  /// [etag] The current entity tag for the streaming job. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [eventsLateArrivalMaxDelayInSeconds] The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1.
  /// [eventsOutOfOrderMaxDelayInSeconds] The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  /// [eventsOutOfOrderPolicy] Indicates the policy to apply to events that arrive out of order in the input event stream.
  /// [functions] A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Describes the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs.
  /// [inputs] A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input.
  /// [jobId] A GUID uniquely identifying the streaming job. This GUID is generated upon creation of the streaming job.
  /// [jobState] Describes the state of the streaming job.
  /// [jobStorageAccount] The properties that are associated with an Azure Storage account with MSI
  /// [jobType] Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
  /// [lastOutputEventTime] Value is either an ISO-8601 formatted timestamp indicating the last output event time of the streaming job or null indicating that output has not yet been produced. In case of multiple outputs or multiple streams, this shows the latest value in that set.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [outputErrorPolicy] Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
  /// [outputStartMode] This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
  /// [outputStartTime] Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime.
  /// [outputs] A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output.
  /// [provisioningState] Describes the provisioning status of the streaming job.
  /// [sku] Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests.
  /// [tags] Resource tags.
  /// [transformation] Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  GetStreamingJobResult({
    required this.azureApiVersion,
    this.cluster,
    this.compatibilityLevel,
    this.contentStoragePolicy,
    required this.createdDate,
    this.dataLocale,
    required this.etag,
    this.eventsLateArrivalMaxDelayInSeconds,
    this.eventsOutOfOrderMaxDelayInSeconds,
    this.eventsOutOfOrderPolicy,
    this.functions,
    required this.id,
    this.identity,
    this.inputs,
    required this.jobId,
    required this.jobState,
    this.jobStorageAccount,
    this.jobType,
    required this.lastOutputEventTime,
    this.location,
    required this.name,
    this.outputErrorPolicy,
    this.outputStartMode,
    this.outputStartTime,
    this.outputs,
    required this.provisioningState,
    this.sku,
    this.tags,
    this.transformation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cluster': ?cluster == null ? null : cluster!.toMap(),
      'compatibilityLevel': ?compatibilityLevel,
      'contentStoragePolicy': ?contentStoragePolicy,
      'createdDate': createdDate,
      'dataLocale': ?dataLocale,
      'etag': etag,
      'eventsLateArrivalMaxDelayInSeconds': ?eventsLateArrivalMaxDelayInSeconds,
      'eventsOutOfOrderMaxDelayInSeconds': ?eventsOutOfOrderMaxDelayInSeconds,
      'eventsOutOfOrderPolicy': ?eventsOutOfOrderPolicy,
      'functions': ?functions == null ? null : pulumi.Input.encodeList<FunctionResponse, Map<String, dynamic>>(functions!, (value) => value.toMap()),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeList<InputResponse, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'jobId': jobId,
      'jobState': jobState,
      'jobStorageAccount': ?jobStorageAccount == null ? null : jobStorageAccount!.toMap(),
      'jobType': ?jobType,
      'lastOutputEventTime': lastOutputEventTime,
      'location': ?location,
      'name': name,
      'outputErrorPolicy': ?outputErrorPolicy,
      'outputStartMode': ?outputStartMode,
      'outputStartTime': ?outputStartTime,
      'outputs': ?outputs == null ? null : pulumi.Input.encodeList<OutputResponse, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'transformation': ?transformation == null ? null : transformation!.toMap(),
      'type': type,
    };
  }

  factory GetStreamingJobResult.fromMap(Map<String, dynamic> map) {
    return GetStreamingJobResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cluster: map['cluster'] == null ? null : ClusterInfoResponse.fromMap((map['cluster'] as Map).cast<String, dynamic>()),
      compatibilityLevel: map['compatibilityLevel'] == null ? null : map['compatibilityLevel'] as String,
      contentStoragePolicy: map['contentStoragePolicy'] == null ? null : map['contentStoragePolicy'] as String,
      createdDate: map['createdDate'] as String,
      dataLocale: map['dataLocale'] == null ? null : map['dataLocale'] as String,
      etag: map['etag'] as String,
      eventsLateArrivalMaxDelayInSeconds: map['eventsLateArrivalMaxDelayInSeconds'] == null ? null : map['eventsLateArrivalMaxDelayInSeconds'] as int,
      eventsOutOfOrderMaxDelayInSeconds: map['eventsOutOfOrderMaxDelayInSeconds'] == null ? null : map['eventsOutOfOrderMaxDelayInSeconds'] as int,
      eventsOutOfOrderPolicy: map['eventsOutOfOrderPolicy'] == null ? null : map['eventsOutOfOrderPolicy'] as String,
      functions: map['functions'] == null ? null : pulumi.Input.decodeList<FunctionResponse>(map['functions'], (value) => FunctionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<InputResponse>(map['inputs'], (value) => InputResponse.fromMap((value as Map).cast<String, dynamic>())),
      jobId: map['jobId'] as String,
      jobState: map['jobState'] as String,
      jobStorageAccount: map['jobStorageAccount'] == null ? null : JobStorageAccountResponse.fromMap((map['jobStorageAccount'] as Map).cast<String, dynamic>()),
      jobType: map['jobType'] == null ? null : map['jobType'] as String,
      lastOutputEventTime: map['lastOutputEventTime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      outputErrorPolicy: map['outputErrorPolicy'] == null ? null : map['outputErrorPolicy'] as String,
      outputStartMode: map['outputStartMode'] == null ? null : map['outputStartMode'] as String,
      outputStartTime: map['outputStartTime'] == null ? null : map['outputStartTime'] as String,
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeList<OutputResponse>(map['outputs'], (value) => OutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transformation: map['transformation'] == null ? null : TransformationResponse.fromMap((map['transformation'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


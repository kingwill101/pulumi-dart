// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_blob_event_pipeline.dart';

/// {@template pulumi_datafactory_trigger_blob_event_trigger_blob_event_args_doc}
/// The set of arguments for TriggerBlobEvent.
/// {@endtemplate}
/// {@macro pulumi_datafactory_trigger_blob_event_trigger_blob_event_args_doc}
class TriggerBlobEventArgs {
  /// Specifies if the Data Factory Blob Event Trigger is activated. Defaults to `true`.
  final pulumi.Input<bool>? activated;
  /// A map of additional properties to associate with the Data Factory Blob Event Trigger.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Blob Event Trigger.
  final pulumi.Input<List<String>>? annotations;
  /// The pattern that blob path starts with for trigger to fire.
  final pulumi.Input<String>? blobPathBeginsWith;
  /// The pattern that blob path ends with for trigger to fire.
  ///
  /// > **Note:** At least one of `blob_path_begins_with` and `blob_path_ends_with` must be set.
  final pulumi.Input<String>? blobPathEndsWith;
  /// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Blob Event Trigger.
  final pulumi.Input<String>? description;
  /// List of events that will fire this trigger. Possible values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobDeleted`.
  final pulumi.Input<List<String>> events;
  /// are blobs with zero bytes ignored?
  final pulumi.Input<bool>? ignoreEmptyBlobs;
  /// Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `pipeline` blocks as defined below.
  final pulumi.Input<List<TriggerBlobEventPipeline>> pipelines;
  /// The ID of Storage Account in which blob event will be listened. Changing this forces a new resource.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [TriggerBlobEventArgs].
  /// [activated] Specifies if the Data Factory Blob Event Trigger is activated. Defaults to `true`.
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Blob Event Trigger.
  /// [annotations] List of tags that can be used for describing the Data Factory Blob Event Trigger.
  /// [blobPathBeginsWith] The pattern that blob path starts with for trigger to fire.
  /// [blobPathEndsWith] The pattern that blob path ends with for trigger to fire.
  /// [dataFactoryId] The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Blob Event Trigger.
  /// [events] List of events that will fire this trigger. Possible values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobDeleted`.
  /// [ignoreEmptyBlobs] are blobs with zero bytes ignored?
  /// [name] Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created.
  /// [pipelines] One or more `pipeline` blocks as defined below.
  /// [storageAccountId] The ID of Storage Account in which blob event will be listened. Changing this forces a new resource.
  TriggerBlobEventArgs({
    pulumi.Output<bool>? activated,
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? blobPathBeginsWith,
    pulumi.Output<String>? blobPathEndsWith,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    required pulumi.Output<List<String>> events,
    pulumi.Output<bool>? ignoreEmptyBlobs,
    pulumi.Output<String>? name,
    required pulumi.Output<List<TriggerBlobEventPipeline>> pipelines,
    required pulumi.Output<String> storageAccountId,
  }) :
      activated = pulumi.Input.asOptionalInput<bool>(activated),
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      blobPathBeginsWith = pulumi.Input.asOptionalInput<String>(blobPathBeginsWith),
      blobPathEndsWith = pulumi.Input.asOptionalInput<String>(blobPathEndsWith),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      events = pulumi.Input.asInput<List<String>>(events),
      ignoreEmptyBlobs = pulumi.Input.asOptionalInput<bool>(ignoreEmptyBlobs),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipelines = pulumi.Input.asInput<List<TriggerBlobEventPipeline>>(pipelines),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': ?activated,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'blobPathBeginsWith': ?blobPathBeginsWith,
      'blobPathEndsWith': ?blobPathEndsWith,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'events': events,
      'ignoreEmptyBlobs': ?ignoreEmptyBlobs,
      'name': ?name,
      'pipelines': pulumi.Input.mapInputValue<List<TriggerBlobEventPipeline>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<TriggerBlobEventPipeline, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': storageAccountId,
    };
  }

  factory TriggerBlobEventArgs.fromMap(Map<String, dynamic> map) {
    return TriggerBlobEventArgs(
      activated: map['activated'] == null ? null : pulumi.Output.create<bool>(map['activated'] as bool),
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      blobPathBeginsWith: map['blobPathBeginsWith'] == null ? null : pulumi.Output.create<String>(map['blobPathBeginsWith'] as String),
      blobPathEndsWith: map['blobPathEndsWith'] == null ? null : pulumi.Output.create<String>(map['blobPathEndsWith'] as String),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      events: pulumi.Output.create<List<String>>((map['events'] as List).cast<String>()),
      ignoreEmptyBlobs: map['ignoreEmptyBlobs'] == null ? null : pulumi.Output.create<bool>(map['ignoreEmptyBlobs'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pipelines: pulumi.Output.create<List<TriggerBlobEventPipeline>>(pulumi.Input.decodeList<TriggerBlobEventPipeline>(map['pipelines'], (value) => TriggerBlobEventPipeline.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountId: pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}


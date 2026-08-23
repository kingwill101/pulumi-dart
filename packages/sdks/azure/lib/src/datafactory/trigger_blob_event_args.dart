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
  /// &gt; **Note:** At least one of `blobPathBeginsWith` and `blobPathEndsWith` must be set.
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
  const TriggerBlobEventArgs({
    this.activated,
    this.additionalProperties,
    this.annotations,
    this.blobPathBeginsWith,
    this.blobPathEndsWith,
    required this.dataFactoryId,
    this.description,
    required this.events,
    this.ignoreEmptyBlobs,
    this.name,
    required this.pipelines,
    required this.storageAccountId,
  });

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
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blobPathBeginsWith: (() { final guardedValue = map['blobPathBeginsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blobPathEndsWith: (() { final guardedValue = map['blobPathEndsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: pulumi.Input.fromValue((map['events'] as List).cast<String>()),
      ignoreEmptyBlobs: (() { final guardedValue = map['ignoreEmptyBlobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelines: pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerBlobEventPipeline>(map['pipelines']!, (value) => TriggerBlobEventPipeline.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_blob_event_pipeline.dart';

/// Input properties used for looking up and filtering TriggerBlobEvent resources.
class TriggerBlobEventState {
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
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Blob Event Trigger.
  final pulumi.Input<String>? description;
  /// List of events that will fire this trigger. Possible values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobDeleted`.
  final pulumi.Input<List<String>>? events;
  /// are blobs with zero bytes ignored?
  final pulumi.Input<bool>? ignoreEmptyBlobs;
  /// Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `pipeline` blocks as defined below.
  final pulumi.Input<List<TriggerBlobEventPipeline>>? pipelines;
  /// The ID of Storage Account in which blob event will be listened. Changing this forces a new resource.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [TriggerBlobEventState].
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
  TriggerBlobEventState({
    this.activated,
    this.additionalProperties,
    this.annotations,
    this.blobPathBeginsWith,
    this.blobPathEndsWith,
    this.dataFactoryId,
    this.description,
    this.events,
    this.ignoreEmptyBlobs,
    this.name,
    this.pipelines,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': ?activated,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'blobPathBeginsWith': ?blobPathBeginsWith,
      'blobPathEndsWith': ?blobPathEndsWith,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'events': ?events,
      'ignoreEmptyBlobs': ?ignoreEmptyBlobs,
      'name': ?name,
      'pipelines': ?pulumi.Input.mapOptionalInputValue<List<TriggerBlobEventPipeline>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<TriggerBlobEventPipeline, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': ?storageAccountId,
    };
  }

  factory TriggerBlobEventState.fromMap(Map<String, dynamic> map) {
    return TriggerBlobEventState(
      activated: map['activated'] == null ? null : (map['activated'] as bool).input(),
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      blobPathBeginsWith: map['blobPathBeginsWith'] == null ? null : (map['blobPathBeginsWith'] as String).input(),
      blobPathEndsWith: map['blobPathEndsWith'] == null ? null : (map['blobPathEndsWith'] as String).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      events: map['events'] == null ? null : ((map['events'] as List).cast<String>()).input(),
      ignoreEmptyBlobs: map['ignoreEmptyBlobs'] == null ? null : (map['ignoreEmptyBlobs'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pipelines: map['pipelines'] == null ? null : (pulumi.Input.decodeList<TriggerBlobEventPipeline>(map['pipelines'], (value) => TriggerBlobEventPipeline.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
    );
  }
}


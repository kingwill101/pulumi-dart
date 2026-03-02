// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_condition.dart';
import 'delivery_pipeline_serial_pipeline.dart';

/// Input properties used for looking up and filtering DeliveryPipeline resources.
class DeliveryPipelineState {
  /// User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. Information around the state of the Delivery Pipeline.
  final pulumi.Input<List<DeliveryPipelineCondition>>? conditions;
  /// Output only. Time at which the pipeline was created.
  final pulumi.Input<String>? createTime;
  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Name of the `DeliveryPipeline`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final pulumi.Input<DeliveryPipelineSerialPipeline>? serialPipeline;
  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final pulumi.Input<bool>? suspended;
  /// Output only. Unique identifier of the `DeliveryPipeline`.
  final pulumi.Input<String>? uid;
  /// Output only. Most recent time at which the pipeline was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DeliveryPipelineState].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [conditions] Output only. Information around the state of the Delivery Pipeline.
  /// [createTime] Output only. Time at which the pipeline was created.
  /// [description] Description of the `DeliveryPipeline`. Max length is 255 characters.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] The location for the resource
  /// [name] Name of the `DeliveryPipeline`. Format is `a-z?`.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [serialPipeline] SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  /// [suspended] When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  /// [uid] Output only. Unique identifier of the `DeliveryPipeline`.
  /// [updateTime] Output only. Most recent time at which the pipeline was updated.
  DeliveryPipelineState({
    this.annotations,
    this.conditions,
    this.createTime,
    this.description,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serialPipeline,
    this.suspended,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DeliveryPipelineCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serialPipeline': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipeline, Map<String, dynamic>>(serialPipeline, (value) => value.toMap()),
      'suspended': ?suspended,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DeliveryPipelineState.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<DeliveryPipelineCondition>(map['conditions']!, (value) => DeliveryPipelineCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      serialPipeline: map['serialPipeline'] == null ? null : (DeliveryPipelineSerialPipeline.fromMap((map['serialPipeline']! as Map).cast<String, dynamic>())).input(),
      suspended: map['suspended'] == null ? null : (map['suspended']! as bool).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}


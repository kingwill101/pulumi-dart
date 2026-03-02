// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_condition_response.dart';
import 'serial_pipeline_response.dart';

/// A `DeliveryPipeline` resource in the Cloud Deploy API. A `DeliveryPipeline` defines a pipeline through which a Skaffold configuration can progress.
class DeliveryPipelineResponse {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  final pulumi.Input<Map<String, String>> annotations;
  /// Information around the state of the Delivery Pipeline.
  final pulumi.Input<PipelineConditionResponse> condition;
  /// Time at which the pipeline was created.
  final pulumi.Input<String> createTime;
  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final pulumi.Input<String> description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String> etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  final pulumi.Input<Map<String, String>> labels;
  /// Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  final pulumi.Input<String> name;
  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final pulumi.Input<SerialPipelineResponse> serialPipeline;
  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final pulumi.Input<bool> suspended;
  /// Unique identifier of the `DeliveryPipeline`.
  final pulumi.Input<String> uid;
  /// Most recent time at which the pipeline was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [DeliveryPipelineResponse].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  /// [condition] Information around the state of the Delivery Pipeline.
  /// [createTime] Time at which the pipeline was created.
  /// [description] Description of the `DeliveryPipeline`. Max length is 255 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [name] Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  /// [serialPipeline] SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  /// [suspended] When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  /// [uid] Unique identifier of the `DeliveryPipeline`.
  /// [updateTime] Most recent time at which the pipeline was updated.
  DeliveryPipelineResponse({
    required this.annotations,
    required this.condition,
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.serialPipeline,
    required this.suspended,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'condition': pulumi.Input.mapInputValue<PipelineConditionResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'labels': labels,
      'name': name,
      'serialPipeline': pulumi.Input.mapInputValue<SerialPipelineResponse, Map<String, dynamic>>(serialPipeline, (value) => value.toMap()),
      'suspended': suspended,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory DeliveryPipelineResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineResponse(
      annotations: ((map['annotations'] as Map).cast<String, String>()).input(),
      condition: (PipelineConditionResponse.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      etag: (map['etag'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      serialPipeline: (SerialPipelineResponse.fromMap((map['serialPipeline'] as Map).cast<String, dynamic>())).input(),
      suspended: (map['suspended'] as bool).input(),
      uid: (map['uid'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}


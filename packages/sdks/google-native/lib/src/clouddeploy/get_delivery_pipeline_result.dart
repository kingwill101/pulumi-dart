// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_condition_response.dart';
import 'serial_pipeline_response.dart';

/// Result data returned by getDeliveryPipeline.
class GetDeliveryPipelineResult {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  final Map<String, String> annotations;
  /// Information around the state of the Delivery Pipeline.
  final PipelineConditionResponse condition;
  /// Time at which the pipeline was created.
  final String createTime;
  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final String description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  final Map<String, String> labels;
  /// Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  final String name;
  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final SerialPipelineResponse serialPipeline;
  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final bool suspended;
  /// Unique identifier of the `DeliveryPipeline`.
  final String uid;
  /// Most recent time at which the pipeline was updated.
  final String updateTime;

  /// Creates a new [GetDeliveryPipelineResult].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  /// [condition] Information around the state of the Delivery Pipeline.
  /// [createTime] Time at which the pipeline was created.
  /// [description] Description of the `DeliveryPipeline`. Max length is 255 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// [name] Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  /// [serialPipeline] SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  /// [suspended] When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  /// [uid] Unique identifier of the `DeliveryPipeline`.
  /// [updateTime] Most recent time at which the pipeline was updated.
  GetDeliveryPipelineResult({
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
      'condition': condition.toMap(),
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'labels': labels,
      'name': name,
      'serialPipeline': serialPipeline.toMap(),
      'suspended': suspended,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetDeliveryPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetDeliveryPipelineResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      condition: PipelineConditionResponse.fromMap((map['condition']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      serialPipeline: SerialPipelineResponse.fromMap((map['serialPipeline']! as Map).cast<String, dynamic>()),
      suspended: map['suspended'] as bool,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}


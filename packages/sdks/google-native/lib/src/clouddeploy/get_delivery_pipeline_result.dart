// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_condition_response.dart';
import 'serial_pipeline_response.dart';

/// Result data returned by getDeliveryPipeline.
class GetDeliveryPipelineResult {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  final Map<String, String>? annotations;
  /// Information around the state of the Delivery Pipeline.
  final PipelineConditionResponse? condition;
  /// Time at which the pipeline was created.
  final String? createTime;
  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final String? description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  final Map<String, String>? labels;
  /// Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  final String? name;
  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final SerialPipelineResponse? serialPipeline;
  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final bool? suspended;
  /// Unique identifier of the `DeliveryPipeline`.
  final String? uid;
  /// Most recent time at which the pipeline was updated.
  final String? updateTime;

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
  const GetDeliveryPipelineResult({
    this.annotations,
    this.condition,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.serialPipeline,
    this.suspended,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'condition': ?condition?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'serialPipeline': ?serialPipeline?.toMap(),
      'suspended': ?suspended,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetDeliveryPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetDeliveryPipelineResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return PipelineConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialPipeline: (() { final guardedValue = map['serialPipeline']; if (guardedValue == null) return null; return SerialPipelineResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

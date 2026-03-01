// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment_message_mixed_audio_segment.dart';

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio {
  /// Segments this audio response is composed of.
  final List<CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment>? segments;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio].
  /// [segments] Segments this audio response is composed of.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio({
    this.segments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segments': ?segments == null ? null : pulumi.Input.encodeList<CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment, Map<String, dynamic>>(segments!, (value) => value.toMap()),
    };
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio(
      segments: map['segments'] == null ? null : pulumi.Input.decodeList<CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment>(map['segments'], (value) => CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


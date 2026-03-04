// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_message_mixed_audio_segment.dart';

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio {
  /// Segments this audio response is composed of.
  final pulumi.Input<
    List<
      CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment
    >
  >?
  segments;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio].
  /// [segments] Segments this audio response is composed of.
  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio({
    this.segments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segments':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment
            >,
            List<Map<String, dynamic>>
          >(
            segments,
            (value) =>
                pulumi.Input.encodeList<
                  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio(
      segments: (() {
        final guardedValue = map['segments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment
          >(
            guardedValue,
            (value) =>
                CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}

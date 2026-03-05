// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ad_break_response.dart';
import 'edit_atom_response.dart';
import 'elementary_stream_response.dart';
import 'encryption_response.dart';
import 'input_response.dart';
import 'manifest_response.dart';
import 'mux_stream_response.dart';
import 'output_response.dart';
import 'overlay_response.dart';
import 'pubsub_destination_response.dart';
import 'sprite_sheet_response.dart';

/// Job configuration
class JobConfigResponse {
  /// List of ad breaks. Specifies where to insert ad break tags in the output manifests.
  final pulumi.Input<List<AdBreakResponse>> adBreaks;
  /// List of edit atoms. Defines the ultimate timeline of the resulting file or manifest.
  final pulumi.Input<List<EditAtomResponse>> editList;
  /// List of elementary streams.
  final pulumi.Input<List<ElementaryStreamResponse>> elementaryStreams;
  /// List of encryption configurations for the content. Each configuration has an ID. Specify this ID in the MuxStream.encryption_id field to indicate the configuration to use for that `MuxStream` output.
  final pulumi.Input<List<EncryptionResponse>> encryptions;
  /// List of input assets stored in Cloud Storage.
  final pulumi.Input<List<InputResponse>> inputs;
  /// List of output manifests.
  final pulumi.Input<List<ManifestResponse>> manifests;
  /// List of multiplexing settings for output streams.
  final pulumi.Input<List<MuxStreamResponse>> muxStreams;
  /// Output configuration.
  final pulumi.Input<OutputResponse> output;
  /// List of overlays on the output video, in descending Z-order.
  final pulumi.Input<List<OverlayResponse>> overlays;
  /// Destination on Pub/Sub.
  final pulumi.Input<PubsubDestinationResponse> pubsubDestination;
  /// List of output sprite sheets. Spritesheets require at least one VideoStream in the Jobconfig.
  final pulumi.Input<List<SpriteSheetResponse>> spriteSheets;

  /// Creates a new [JobConfigResponse].
  /// [adBreaks] List of ad breaks. Specifies where to insert ad break tags in the output manifests.
  /// [editList] List of edit atoms. Defines the ultimate timeline of the resulting file or manifest.
  /// [elementaryStreams] List of elementary streams.
  /// [encryptions] List of encryption configurations for the content. Each configuration has an ID. Specify this ID in the MuxStream.encryption_id field to indicate the configuration to use for that `MuxStream` output.
  /// [inputs] List of input assets stored in Cloud Storage.
  /// [manifests] List of output manifests.
  /// [muxStreams] List of multiplexing settings for output streams.
  /// [output] Output configuration.
  /// [overlays] List of overlays on the output video, in descending Z-order.
  /// [pubsubDestination] Destination on Pub/Sub.
  /// [spriteSheets] List of output sprite sheets. Spritesheets require at least one VideoStream in the Jobconfig.
  JobConfigResponse({
    required this.adBreaks,
    required this.editList,
    required this.elementaryStreams,
    required this.encryptions,
    required this.inputs,
    required this.manifests,
    required this.muxStreams,
    required this.output,
    required this.overlays,
    required this.pubsubDestination,
    required this.spriteSheets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adBreaks': pulumi.Input.mapInputValue<List<AdBreakResponse>, List<Map<String, dynamic>>>(adBreaks, (value) => pulumi.Input.encodeList<AdBreakResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'editList': pulumi.Input.mapInputValue<List<EditAtomResponse>, List<Map<String, dynamic>>>(editList, (value) => pulumi.Input.encodeList<EditAtomResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'elementaryStreams': pulumi.Input.mapInputValue<List<ElementaryStreamResponse>, List<Map<String, dynamic>>>(elementaryStreams, (value) => pulumi.Input.encodeList<ElementaryStreamResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptions': pulumi.Input.mapInputValue<List<EncryptionResponse>, List<Map<String, dynamic>>>(encryptions, (value) => pulumi.Input.encodeList<EncryptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputs': pulumi.Input.mapInputValue<List<InputResponse>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<InputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifests': pulumi.Input.mapInputValue<List<ManifestResponse>, List<Map<String, dynamic>>>(manifests, (value) => pulumi.Input.encodeList<ManifestResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'muxStreams': pulumi.Input.mapInputValue<List<MuxStreamResponse>, List<Map<String, dynamic>>>(muxStreams, (value) => pulumi.Input.encodeList<MuxStreamResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'output': pulumi.Input.mapInputValue<OutputResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'overlays': pulumi.Input.mapInputValue<List<OverlayResponse>, List<Map<String, dynamic>>>(overlays, (value) => pulumi.Input.encodeList<OverlayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pubsubDestination': pulumi.Input.mapInputValue<PubsubDestinationResponse, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
      'spriteSheets': pulumi.Input.mapInputValue<List<SpriteSheetResponse>, List<Map<String, dynamic>>>(spriteSheets, (value) => pulumi.Input.encodeList<SpriteSheetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobConfigResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigResponse(
      adBreaks: pulumi.Input.fromValue(pulumi.Input.decodeList<AdBreakResponse>(map['adBreaks']!, (value) => AdBreakResponse.fromMap((value as Map).cast<String, dynamic>()))),
      editList: pulumi.Input.fromValue(pulumi.Input.decodeList<EditAtomResponse>(map['editList']!, (value) => EditAtomResponse.fromMap((value as Map).cast<String, dynamic>()))),
      elementaryStreams: pulumi.Input.fromValue(pulumi.Input.decodeList<ElementaryStreamResponse>(map['elementaryStreams']!, (value) => ElementaryStreamResponse.fromMap((value as Map).cast<String, dynamic>()))),
      encryptions: pulumi.Input.fromValue(pulumi.Input.decodeList<EncryptionResponse>(map['encryptions']!, (value) => EncryptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inputs: pulumi.Input.fromValue(pulumi.Input.decodeList<InputResponse>(map['inputs']!, (value) => InputResponse.fromMap((value as Map).cast<String, dynamic>()))),
      manifests: pulumi.Input.fromValue(pulumi.Input.decodeList<ManifestResponse>(map['manifests']!, (value) => ManifestResponse.fromMap((value as Map).cast<String, dynamic>()))),
      muxStreams: pulumi.Input.fromValue(pulumi.Input.decodeList<MuxStreamResponse>(map['muxStreams']!, (value) => MuxStreamResponse.fromMap((value as Map).cast<String, dynamic>()))),
      output: pulumi.Input.fromValue(OutputResponse.fromMap((map['output']! as Map).cast<String, dynamic>())),
      overlays: pulumi.Input.fromValue(pulumi.Input.decodeList<OverlayResponse>(map['overlays']!, (value) => OverlayResponse.fromMap((value as Map).cast<String, dynamic>()))),
      pubsubDestination: pulumi.Input.fromValue(PubsubDestinationResponse.fromMap((map['pubsubDestination']! as Map).cast<String, dynamic>())),
      spriteSheets: pulumi.Input.fromValue(pulumi.Input.decodeList<SpriteSheetResponse>(map['spriteSheets']!, (value) => SpriteSheetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


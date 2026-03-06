// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ad_break.dart';
import 'edit_atom.dart';
import 'elementary_stream.dart';
import 'encryption.dart';
import 'input_type.dart';
import 'manifest.dart';
import 'mux_stream.dart';
import 'output_type.dart';
import 'overlay.dart';
import 'pubsub_destination.dart';
import 'sprite_sheet.dart';

/// Job configuration
class JobConfig {
  /// List of ad breaks. Specifies where to insert ad break tags in the output manifests.
  final pulumi.Input<List<AdBreak>>? adBreaks;
  /// List of edit atoms. Defines the ultimate timeline of the resulting file or manifest.
  final pulumi.Input<List<EditAtom>>? editList;
  /// List of elementary streams.
  final pulumi.Input<List<ElementaryStream>>? elementaryStreams;
  /// List of encryption configurations for the content. Each configuration has an ID. Specify this ID in the MuxStream.encryption_id field to indicate the configuration to use for that `MuxStream` output.
  final pulumi.Input<List<Encryption>>? encryptions;
  /// List of input assets stored in Cloud Storage.
  final pulumi.Input<List<InputType>>? inputs;
  /// List of output manifests.
  final pulumi.Input<List<Manifest>>? manifests;
  /// List of multiplexing settings for output streams.
  final pulumi.Input<List<MuxStream>>? muxStreams;
  /// Output configuration.
  final pulumi.Input<OutputType>? output;
  /// List of overlays on the output video, in descending Z-order.
  final pulumi.Input<List<Overlay>>? overlays;
  /// Destination on Pub/Sub.
  final pulumi.Input<PubsubDestination>? pubsubDestination;
  /// List of output sprite sheets. Spritesheets require at least one VideoStream in the Jobconfig.
  final pulumi.Input<List<SpriteSheet>>? spriteSheets;

  /// Creates a new [JobConfig].
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
  const JobConfig({
    this.adBreaks,
    this.editList,
    this.elementaryStreams,
    this.encryptions,
    this.inputs,
    this.manifests,
    this.muxStreams,
    this.output,
    this.overlays,
    this.pubsubDestination,
    this.spriteSheets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adBreaks': ?pulumi.Input.mapOptionalInputValue<List<AdBreak>, List<Map<String, dynamic>>>(adBreaks, (value) => pulumi.Input.encodeList<AdBreak, Map<String, dynamic>>(value, (value) => value.toMap())),
      'editList': ?pulumi.Input.mapOptionalInputValue<List<EditAtom>, List<Map<String, dynamic>>>(editList, (value) => pulumi.Input.encodeList<EditAtom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'elementaryStreams': ?pulumi.Input.mapOptionalInputValue<List<ElementaryStream>, List<Map<String, dynamic>>>(elementaryStreams, (value) => pulumi.Input.encodeList<ElementaryStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptions': ?pulumi.Input.mapOptionalInputValue<List<Encryption>, List<Map<String, dynamic>>>(encryptions, (value) => pulumi.Input.encodeList<Encryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<InputType>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<InputType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifests': ?pulumi.Input.mapOptionalInputValue<List<Manifest>, List<Map<String, dynamic>>>(manifests, (value) => pulumi.Input.encodeList<Manifest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'muxStreams': ?pulumi.Input.mapOptionalInputValue<List<MuxStream>, List<Map<String, dynamic>>>(muxStreams, (value) => pulumi.Input.encodeList<MuxStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'output': ?pulumi.Input.mapOptionalInputValue<OutputType, Map<String, dynamic>>(output, (value) => value.toMap()),
      'overlays': ?pulumi.Input.mapOptionalInputValue<List<Overlay>, List<Map<String, dynamic>>>(overlays, (value) => pulumi.Input.encodeList<Overlay, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pubsubDestination': ?pulumi.Input.mapOptionalInputValue<PubsubDestination, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
      'spriteSheets': ?pulumi.Input.mapOptionalInputValue<List<SpriteSheet>, List<Map<String, dynamic>>>(spriteSheets, (value) => pulumi.Input.encodeList<SpriteSheet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobConfig.fromMap(Map<String, dynamic> map) {
    return JobConfig(
      adBreaks: (() { final guardedValue = map['adBreaks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdBreak>(guardedValue, (value) => AdBreak.fromMap((value as Map).cast<String, dynamic>()))); })(),
      editList: (() { final guardedValue = map['editList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EditAtom>(guardedValue, (value) => EditAtom.fromMap((value as Map).cast<String, dynamic>()))); })(),
      elementaryStreams: (() { final guardedValue = map['elementaryStreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ElementaryStream>(guardedValue, (value) => ElementaryStream.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Encryption>(guardedValue, (value) => Encryption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputType>(guardedValue, (value) => InputType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manifests: (() { final guardedValue = map['manifests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Manifest>(guardedValue, (value) => Manifest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      muxStreams: (() { final guardedValue = map['muxStreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MuxStream>(guardedValue, (value) => MuxStream.fromMap((value as Map).cast<String, dynamic>()))); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OutputType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overlays: (() { final guardedValue = map['overlays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Overlay>(guardedValue, (value) => Overlay.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pubsubDestination: (() { final guardedValue = map['pubsubDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PubsubDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spriteSheets: (() { final guardedValue = map['spriteSheets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpriteSheet>(guardedValue, (value) => SpriteSheet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


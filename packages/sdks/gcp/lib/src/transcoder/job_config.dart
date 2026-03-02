// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_ad_break.dart';
import 'job_config_edit_list.dart';
import 'job_config_elementary_stream.dart';
import 'job_config_encryption.dart';
import 'job_config_input.dart';
import 'job_config_manifest.dart';
import 'job_config_mux_stream.dart';
import 'job_config_output.dart';
import 'job_config_overlay.dart';
import 'job_config_pubsub_destination.dart';

class JobConfig {
  /// Ad break.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigAdBreak>>? adBreaks;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigEditList>>? editLists;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigElementaryStream>>? elementaryStreams;
  /// List of encryption configurations for the content.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigEncryption>>? encryptions;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigInput>>? inputs;
  /// Manifest configuration.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigManifest>>? manifests;
  /// Multiplexing settings for output stream.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigMuxStream>>? muxStreams;
  /// Location of output file(s) in a Cloud Storage bucket.
  /// Structure is documented below.
  final pulumi.Input<JobConfigOutput>? output;
  /// List of overlays on the output video, in descending Z-order.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigOverlay>>? overlays;
  /// Pub/Sub destination.
  /// Structure is documented below.
  final pulumi.Input<JobConfigPubsubDestination>? pubsubDestination;

  /// Creates a new [JobConfig].
  /// [adBreaks] Ad break.
  /// [editLists] List of input assets stored in Cloud Storage.
  /// [elementaryStreams] List of input assets stored in Cloud Storage.
  /// [encryptions] List of encryption configurations for the content.
  /// [inputs] List of input assets stored in Cloud Storage.
  /// [manifests] Manifest configuration.
  /// [muxStreams] Multiplexing settings for output stream.
  /// [output] Location of output file(s) in a Cloud Storage bucket.
  /// [overlays] List of overlays on the output video, in descending Z-order.
  /// [pubsubDestination] Pub/Sub destination.
  JobConfig({
    this.adBreaks,
    this.editLists,
    this.elementaryStreams,
    this.encryptions,
    this.inputs,
    this.manifests,
    this.muxStreams,
    this.output,
    this.overlays,
    this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adBreaks': ?pulumi.Input.mapOptionalInputValue<List<JobConfigAdBreak>, List<Map<String, dynamic>>>(adBreaks, (value) => pulumi.Input.encodeList<JobConfigAdBreak, Map<String, dynamic>>(value, (value) => value.toMap())),
      'editLists': ?pulumi.Input.mapOptionalInputValue<List<JobConfigEditList>, List<Map<String, dynamic>>>(editLists, (value) => pulumi.Input.encodeList<JobConfigEditList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'elementaryStreams': ?pulumi.Input.mapOptionalInputValue<List<JobConfigElementaryStream>, List<Map<String, dynamic>>>(elementaryStreams, (value) => pulumi.Input.encodeList<JobConfigElementaryStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptions': ?pulumi.Input.mapOptionalInputValue<List<JobConfigEncryption>, List<Map<String, dynamic>>>(encryptions, (value) => pulumi.Input.encodeList<JobConfigEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<JobConfigInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<JobConfigInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifests': ?pulumi.Input.mapOptionalInputValue<List<JobConfigManifest>, List<Map<String, dynamic>>>(manifests, (value) => pulumi.Input.encodeList<JobConfigManifest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'muxStreams': ?pulumi.Input.mapOptionalInputValue<List<JobConfigMuxStream>, List<Map<String, dynamic>>>(muxStreams, (value) => pulumi.Input.encodeList<JobConfigMuxStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'output': ?pulumi.Input.mapOptionalInputValue<JobConfigOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'overlays': ?pulumi.Input.mapOptionalInputValue<List<JobConfigOverlay>, List<Map<String, dynamic>>>(overlays, (value) => pulumi.Input.encodeList<JobConfigOverlay, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pubsubDestination': ?pulumi.Input.mapOptionalInputValue<JobConfigPubsubDestination, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
    };
  }

  factory JobConfig.fromMap(Map<String, dynamic> map) {
    return JobConfig(
      adBreaks: map['adBreaks'] == null ? null : (pulumi.Input.decodeList<JobConfigAdBreak>(map['adBreaks']!, (value) => JobConfigAdBreak.fromMap((value as Map).cast<String, dynamic>()))).input(),
      editLists: map['editLists'] == null ? null : (pulumi.Input.decodeList<JobConfigEditList>(map['editLists']!, (value) => JobConfigEditList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      elementaryStreams: map['elementaryStreams'] == null ? null : (pulumi.Input.decodeList<JobConfigElementaryStream>(map['elementaryStreams']!, (value) => JobConfigElementaryStream.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptions: map['encryptions'] == null ? null : (pulumi.Input.decodeList<JobConfigEncryption>(map['encryptions']!, (value) => JobConfigEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeList<JobConfigInput>(map['inputs']!, (value) => JobConfigInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manifests: map['manifests'] == null ? null : (pulumi.Input.decodeList<JobConfigManifest>(map['manifests']!, (value) => JobConfigManifest.fromMap((value as Map).cast<String, dynamic>()))).input(),
      muxStreams: map['muxStreams'] == null ? null : (pulumi.Input.decodeList<JobConfigMuxStream>(map['muxStreams']!, (value) => JobConfigMuxStream.fromMap((value as Map).cast<String, dynamic>()))).input(),
      output: map['output'] == null ? null : (JobConfigOutput.fromMap((map['output']! as Map).cast<String, dynamic>())).input(),
      overlays: map['overlays'] == null ? null : (pulumi.Input.decodeList<JobConfigOverlay>(map['overlays']!, (value) => JobConfigOverlay.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pubsubDestination: map['pubsubDestination'] == null ? null : (JobConfigPubsubDestination.fromMap((map['pubsubDestination']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


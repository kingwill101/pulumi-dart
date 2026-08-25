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
  final pulumi.Input<List<JobConfigAdBreak>?>? adBreaks;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigEditList>?>? editLists;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigElementaryStream>?>? elementaryStreams;
  /// List of encryption configurations for the content.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigEncryption>?>? encryptions;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigInput>?>? inputs;
  /// Manifest configuration.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigManifest>?>? manifests;
  /// Multiplexing settings for output stream.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigMuxStream>?>? muxStreams;
  /// Location of output file(s) in a Cloud Storage bucket.
  /// Structure is documented below.
  final pulumi.Input<JobConfigOutput?>? output;
  /// List of overlays on the output video, in descending Z-order.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigOverlay>?>? overlays;
  /// Pub/Sub destination.
  /// Structure is documented below.
  final pulumi.Input<JobConfigPubsubDestination?>? pubsubDestination;

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
  const JobConfig({
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
      adBreaks: (() { final guardedValue = map['adBreaks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigAdBreak>(guardedValue, (value) => JobConfigAdBreak.fromMap((value as Map).cast<String, dynamic>()))); })(),
      editLists: (() { final guardedValue = map['editLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigEditList>(guardedValue, (value) => JobConfigEditList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      elementaryStreams: (() { final guardedValue = map['elementaryStreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigElementaryStream>(guardedValue, (value) => JobConfigElementaryStream.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigEncryption>(guardedValue, (value) => JobConfigEncryption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigInput>(guardedValue, (value) => JobConfigInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manifests: (() { final guardedValue = map['manifests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigManifest>(guardedValue, (value) => JobConfigManifest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      muxStreams: (() { final guardedValue = map['muxStreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigMuxStream>(guardedValue, (value) => JobConfigMuxStream.fromMap((value as Map).cast<String, dynamic>()))); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overlays: (() { final guardedValue = map['overlays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobConfigOverlay>(guardedValue, (value) => JobConfigOverlay.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pubsubDestination: (() { final guardedValue = map['pubsubDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigPubsubDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config_ad_break.dart';
import 'job_template_config_edit_list.dart';
import 'job_template_config_elementary_stream.dart';
import 'job_template_config_encryption.dart';
import 'job_template_config_input.dart';
import 'job_template_config_manifest.dart';
import 'job_template_config_mux_stream.dart';
import 'job_template_config_output.dart';
import 'job_template_config_overlay.dart';
import 'job_template_config_pubsub_destination.dart';

class JobTemplateConfig {
  /// Ad break.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigAdBreak>>? adBreaks;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigEditList>>? editLists;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigElementaryStream>>? elementaryStreams;
  /// List of encryption configurations for the content.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigEncryption>>? encryptions;
  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigInput>>? inputs;
  /// Manifest configuration.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigManifest>>? manifests;
  /// Multiplexing settings for output stream.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigMuxStream>>? muxStreams;
  /// Location of output file(s) in a Cloud Storage bucket.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigOutput>? output;
  /// List of overlays on the output video, in descending Z-order.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigOverlay>>? overlays;
  /// Pub/Sub destination.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigPubsubDestination>? pubsubDestination;

  /// Creates a new [JobTemplateConfig].
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
  JobTemplateConfig({
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
      'adBreaks': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigAdBreak>, List<Map<String, dynamic>>>(adBreaks, (value) => pulumi.Input.encodeList<JobTemplateConfigAdBreak, Map<String, dynamic>>(value, (value) => value.toMap())),
      'editLists': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigEditList>, List<Map<String, dynamic>>>(editLists, (value) => pulumi.Input.encodeList<JobTemplateConfigEditList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'elementaryStreams': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigElementaryStream>, List<Map<String, dynamic>>>(elementaryStreams, (value) => pulumi.Input.encodeList<JobTemplateConfigElementaryStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptions': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigEncryption>, List<Map<String, dynamic>>>(encryptions, (value) => pulumi.Input.encodeList<JobTemplateConfigEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<JobTemplateConfigInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifests': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigManifest>, List<Map<String, dynamic>>>(manifests, (value) => pulumi.Input.encodeList<JobTemplateConfigManifest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'muxStreams': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigMuxStream>, List<Map<String, dynamic>>>(muxStreams, (value) => pulumi.Input.encodeList<JobTemplateConfigMuxStream, Map<String, dynamic>>(value, (value) => value.toMap())),
      'output': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'overlays': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigOverlay>, List<Map<String, dynamic>>>(overlays, (value) => pulumi.Input.encodeList<JobTemplateConfigOverlay, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pubsubDestination': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigPubsubDestination, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
    };
  }

  factory JobTemplateConfig.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfig(
      adBreaks: map['adBreaks'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigAdBreak>(map['adBreaks'], (value) => JobTemplateConfigAdBreak.fromMap((value as Map).cast<String, dynamic>()))).input(),
      editLists: map['editLists'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigEditList>(map['editLists'], (value) => JobTemplateConfigEditList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      elementaryStreams: map['elementaryStreams'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigElementaryStream>(map['elementaryStreams'], (value) => JobTemplateConfigElementaryStream.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptions: map['encryptions'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigEncryption>(map['encryptions'], (value) => JobTemplateConfigEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigInput>(map['inputs'], (value) => JobTemplateConfigInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manifests: map['manifests'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigManifest>(map['manifests'], (value) => JobTemplateConfigManifest.fromMap((value as Map).cast<String, dynamic>()))).input(),
      muxStreams: map['muxStreams'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigMuxStream>(map['muxStreams'], (value) => JobTemplateConfigMuxStream.fromMap((value as Map).cast<String, dynamic>()))).input(),
      output: map['output'] == null ? null : (JobTemplateConfigOutput.fromMap((map['output'] as Map).cast<String, dynamic>())).input(),
      overlays: map['overlays'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigOverlay>(map['overlays'], (value) => JobTemplateConfigOverlay.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pubsubDestination: map['pubsubDestination'] == null ? null : (JobTemplateConfigPubsubDestination.fromMap((map['pubsubDestination'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


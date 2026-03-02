// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_destination.dart';
import 'pipeline_input_payload_format.dart';
import 'pipeline_logging_config.dart';
import 'pipeline_mediation.dart';
import 'pipeline_retry_policy.dart';

/// {@template pulumi_eventarc_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_eventarc_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// User-defined annotations. See https://google.aip.dev/128#annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt the event data. If not set, an internal Google-owned key
  /// will be used to encrypt messages. It must match the pattern
  /// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
  final pulumi.Input<String>? cryptoKeyName;
  /// List of destinations to which messages will be forwarded. Currently,
  /// exactly one destination is supported per Pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<PipelineDestination>> destinations;
  /// Display name of resource.
  final pulumi.Input<String>? displayName;
  /// Represents the format of message data.
  /// Structure is documented below.
  final pulumi.Input<PipelineInputPayloadFormat>? inputPayloadFormat;
  /// User labels attached to the Pipeline that can be used to group
  /// resources. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<PipelineLoggingConfig>? loggingConfig;
  /// List of mediation operations to be performed on the message. Currently,
  /// only one Transformation operation is allowed in each Pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<PipelineMediation>>? mediations;
  /// The user-provided ID to be assigned to the Pipeline. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String> pipelineId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The retry policy configuration for the Pipeline. The pipeline
  /// exponentially backs off in case the destination is non responsive or
  /// returns a retryable error code. The default semantics are as follows:
  /// The backoff starts with a 5 second delay and doubles the
  /// delay after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.).
  /// The delay is capped at 60 seconds by default.
  /// Please note that if you set the min_retry_delay and max_retry_delay fields
  /// to the same value this will make the duration between retries constant.
  /// Structure is documented below.
  final pulumi.Input<PipelineRetryPolicy>? retryPolicy;

  /// Creates a new [PipelineArgs].
  /// [annotations] User-defined annotations. See https://google.aip.dev/128#annotations.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to
  /// [destinations] List of destinations to which messages will be forwarded. Currently,
  /// [displayName] Display name of resource.
  /// [inputPayloadFormat] Represents the format of message data.
  /// [labels] User labels attached to the Pipeline that can be used to group
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [mediations] List of mediation operations to be performed on the message. Currently,
  /// [pipelineId] The user-provided ID to be assigned to the Pipeline. It should match the
  /// [project] The ID of the project in which the resource belongs.
  /// [retryPolicy] The retry policy configuration for the Pipeline. The pipeline
  PipelineArgs({
    this.annotations,
    this.cryptoKeyName,
    required this.destinations,
    this.displayName,
    this.inputPayloadFormat,
    this.labels,
    required this.location,
    this.loggingConfig,
    this.mediations,
    required this.pipelineId,
    this.project,
    this.retryPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'cryptoKeyName': ?cryptoKeyName,
      'destinations': pulumi.Input.mapInputValue<List<PipelineDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<PipelineDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'inputPayloadFormat': ?pulumi.Input.mapOptionalInputValue<PipelineInputPayloadFormat, Map<String, dynamic>>(inputPayloadFormat, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<PipelineLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'mediations': ?pulumi.Input.mapOptionalInputValue<List<PipelineMediation>, List<Map<String, dynamic>>>(mediations, (value) => pulumi.Input.encodeList<PipelineMediation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pipelineId': pipelineId,
      'project': ?project,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<PipelineRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : (map['cryptoKeyName']! as String).input(),
      destinations: (pulumi.Input.decodeList<PipelineDestination>(map['destinations'], (value) => PipelineDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      inputPayloadFormat: map['inputPayloadFormat'] == null ? null : (PipelineInputPayloadFormat.fromMap((map['inputPayloadFormat']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (PipelineLoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      mediations: map['mediations'] == null ? null : (pulumi.Input.decodeList<PipelineMediation>(map['mediations']!, (value) => PipelineMediation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pipelineId: (map['pipelineId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (PipelineRetryPolicy.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


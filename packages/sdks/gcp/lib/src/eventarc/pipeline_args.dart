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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt the event data. If not set, an internal Google-owned key
  /// will be used to encrypt messages. It must match the pattern
  /// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
  final pulumi.Input<String?>? cryptoKeyName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// List of destinations to which messages will be forwarded. Currently,
  /// exactly one destination is supported per Pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<PipelineDestination>> destinations;
  /// Display name of resource.
  final pulumi.Input<String?>? displayName;
  /// Represents the format of message data.
  /// Structure is documented below.
  final pulumi.Input<PipelineInputPayloadFormat?>? inputPayloadFormat;
  /// User labels attached to the Pipeline that can be used to group
  /// resources. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<PipelineLoggingConfig?>? loggingConfig;
  /// List of mediation operations to be performed on the message. Currently,
  /// only one Transformation operation is allowed in each Pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<PipelineMediation>?>? mediations;
  /// The user-provided ID to be assigned to the Pipeline. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String> pipelineId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The retry policy configuration for the Pipeline. The pipeline
  /// exponentially backs off in case the destination is non responsive or
  /// returns a retryable error code. The default semantics are as follows:
  /// The backoff starts with a 5 second delay and doubles the
  /// delay after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.).
  /// The delay is capped at 60 seconds by default.
  /// Please note that if you set the minRetryDelay and maxRetryDelay fields
  /// to the same value this will make the duration between retries constant.
  /// Structure is documented below.
  final pulumi.Input<PipelineRetryPolicy?>? retryPolicy;

  /// Creates a new [PipelineArgs].
  /// [annotations] User-defined annotations. See https://google.aip.dev/128#annotations.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const PipelineArgs({
    this.annotations,
    this.cryptoKeyName,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cryptoKeyName: (() { final guardedValue = map['cryptoKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineDestination>(map['destinations']!, (value) => PipelineDestination.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputPayloadFormat: (() { final guardedValue = map['inputPayloadFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineInputPayloadFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mediations: (() { final guardedValue = map['mediations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineMediation>(guardedValue, (value) => PipelineMediation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pipelineId: pulumi.Input.fromValue(map['pipelineId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_destination.dart';
import 'pipeline_input_payload_format.dart';
import 'pipeline_logging_config.dart';
import 'pipeline_mediation.dart';
import 'pipeline_retry_policy.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// User-defined annotations. See https://google.aip.dev/128#annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt the event data. If not set, an internal Google-owned key
  /// will be used to encrypt messages. It must match the pattern
  /// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
  final pulumi.Input<String>? cryptoKeyName;

  /// List of destinations to which messages will be forwarded. Currently,
  /// exactly one destination is supported per Pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<PipelineDestination>>? destinations;

  /// Display name of resource.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// This checksum is computed by the server based on the value of
  /// other fields, and might be sent only on create requests to ensure that the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

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
  final pulumi.Input<String>? location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<PipelineLoggingConfig>? loggingConfig;

  /// List of mediation operations to be performed on the message. Currently,
  /// only one Transformation operation is allowed in each Pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<PipelineMediation>>? mediations;

  /// The resource name of the Pipeline. Must be unique within the
  /// location of the project and must be in
  /// `projects/{project}/locations/{location}/pipelines/{pipeline}` format.
  final pulumi.Input<String>? name;

  /// The user-provided ID to be assigned to the Pipeline. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String>? pipelineId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

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

  /// Server-assigned unique identifier for the Pipeline. The value
  /// is a UUID4 string and guaranteed to remain unchanged until the resource is
  /// deleted.
  final pulumi.Input<String>? uid;

  /// The last-modified time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PipelineState].
  /// [annotations] User-defined annotations. See https://google.aip.dev/128#annotations.
  /// [createTime] The creation time.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to
  /// [destinations] List of destinations to which messages will be forwarded. Currently,
  /// [displayName] Display name of resource.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] This checksum is computed by the server based on the value of
  /// [inputPayloadFormat] Represents the format of message data.
  /// [labels] User labels attached to the Pipeline that can be used to group
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [mediations] List of mediation operations to be performed on the message. Currently,
  /// [name] The resource name of the Pipeline. Must be unique within the
  /// [pipelineId] The user-provided ID to be assigned to the Pipeline. It should match the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [retryPolicy] The retry policy configuration for the Pipeline. The pipeline
  /// [uid] Server-assigned unique identifier for the Pipeline. The value
  /// [updateTime] The last-modified time.
  PipelineState({
    this.annotations,
    this.createTime,
    this.cryptoKeyName,
    this.destinations,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.inputPayloadFormat,
    this.labels,
    this.location,
    this.loggingConfig,
    this.mediations,
    this.name,
    this.pipelineId,
    this.project,
    this.pulumiLabels,
    this.retryPolicy,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'destinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineDestination>,
            List<Map<String, dynamic>>
          >(
            destinations,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'inputPayloadFormat':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineInputPayloadFormat,
            Map<String, dynamic>
          >(inputPayloadFormat, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineLoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'mediations':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineMediation>,
            List<Map<String, dynamic>>
          >(
            mediations,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineMediation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'pipelineId': ?pipelineId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'retryPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineRetryPolicy,
            Map<String, dynamic>
          >(retryPolicy, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cryptoKeyName: (() {
        final guardedValue = map['cryptoKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinations: (() {
        final guardedValue = map['destinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PipelineDestination>(
            guardedValue,
            (value) => PipelineDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveAnnotations: (() {
        final guardedValue = map['effectiveAnnotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inputPayloadFormat: (() {
        final guardedValue = map['inputPayloadFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineInputPayloadFormat.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineLoggingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mediations: (() {
        final guardedValue = map['mediations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PipelineMediation>(
            guardedValue,
            (value) => PipelineMediation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pipelineId: (() {
        final guardedValue = map['pipelineId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      retryPolicy: (() {
        final guardedValue = map['retryPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineRetryPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

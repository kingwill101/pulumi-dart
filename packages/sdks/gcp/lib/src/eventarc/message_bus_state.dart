// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_bus_logging_config.dart';

/// Input properties used for looking up and filtering MessageBus resources.
class MessageBusState {
  /// Optional. Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. The creation time.
  final pulumi.Input<String>? createTime;
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// Optional. Resource display name.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Optional. Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<MessageBusLoggingConfig>? loggingConfig;
  /// Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String>? messageBusId;
  /// Identifier. Resource name of the form
  /// projects/{project}/locations/{location}/messageBuses/{message_bus}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String>? uid;
  /// Output only. The last-modified time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MessageBusState].
  /// [annotations] Optional. Resource annotations.
  /// [createTime] Output only. The creation time.
  /// [cryptoKeyName] Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// [displayName] Optional. Resource display name.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Output only. This checksum is computed by the server based on the value of other
  /// [labels] Optional. Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [messageBusId] Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// [name] Identifier. Resource name of the form
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] Output only. Server assigned unique identifier for the channel. The value is a UUID4
  /// [updateTime] Output only. The last-modified time.
  MessageBusState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? cryptoKeyName,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MessageBusLoggingConfig>? loggingConfig,
    pulumi.Output<String>? messageBusId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      loggingConfig = pulumi.Input.asOptionalInput<MessageBusLoggingConfig>(loggingConfig),
      messageBusId = pulumi.Input.asOptionalInput<String>(messageBusId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<MessageBusLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'messageBusId': ?messageBusId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory MessageBusState.fromMap(Map<String, dynamic> map) {
    return MessageBusState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<MessageBusLoggingConfig>(MessageBusLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      messageBusId: map['messageBusId'] == null ? null : pulumi.Output.create<String>(map['messageBusId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


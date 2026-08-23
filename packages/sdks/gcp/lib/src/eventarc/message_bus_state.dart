// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_bus_logging_config.dart';

/// Input properties used for looking up and filtering MessageBus resources.
class MessageBusState {
  /// Optional. Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. The creation time.
  final pulumi.Input<String>? createTime;
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Resource display name.
  final pulumi.Input<String>? displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Optional. Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Optional. Resource display name.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
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
  const MessageBusState({
    this.annotations,
    this.createTime,
    this.cryptoKeyName,
    this.deletionPolicy,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.loggingConfig,
    this.messageBusId,
    this.name,
    this.project,
    this.pulumiLabels,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cryptoKeyName: (() { final guardedValue = map['cryptoKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MessageBusLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      messageBusId: (() { final guardedValue = map['messageBusId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

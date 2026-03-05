// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_bus_logging_config.dart';

/// {@template pulumi_eventarc_message_bus_message_bus_args_doc}
/// The set of arguments for MessageBus.
/// {@endtemplate}
/// {@macro pulumi_eventarc_message_bus_message_bus_args_doc}
class MessageBusArgs {
  /// Optional. Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// Optional. Resource display name.
  final pulumi.Input<String>? displayName;
  /// Optional. Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<MessageBusLoggingConfig>? loggingConfig;
  /// Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String> messageBusId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MessageBusArgs].
  /// [annotations] Optional. Resource annotations.
  /// [cryptoKeyName] Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// [displayName] Optional. Resource display name.
  /// [labels] Optional. Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [messageBusId] Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// [project] The ID of the project in which the resource belongs.
  MessageBusArgs({
    this.annotations,
    this.cryptoKeyName,
    this.displayName,
    this.labels,
    required this.location,
    this.loggingConfig,
    required this.messageBusId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'cryptoKeyName': ?cryptoKeyName,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<MessageBusLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'messageBusId': messageBusId,
      'project': ?project,
    };
  }

  factory MessageBusArgs.fromMap(Map<String, dynamic> map) {
    return MessageBusArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cryptoKeyName: (() { final guardedValue = map['cryptoKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MessageBusLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      messageBusId: pulumi.Input.fromValue(map['messageBusId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


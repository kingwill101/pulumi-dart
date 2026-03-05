// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_notification_config.dart';
import 'http_config.dart';
import 'mqtt_config.dart';
import 'registry_credential.dart';
import 'registry_log_level.dart';
import 'state_notification_config.dart';

/// {@template pulumi_cloudiot_v1_registry_args_doc}
/// The set of arguments for Registry.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_registry_args_doc}
class RegistryArgs {
  /// The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.
  final pulumi.Input<List<RegistryCredential>>? credentials;
  /// The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub/Sub topic for the device's registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.
  final pulumi.Input<List<EventNotificationConfig>>? eventNotificationConfigs;
  /// The DeviceService (HTTP) configuration for this device registry.
  final pulumi.Input<HttpConfig>? httpConfig;
  /// The identifier of this device registry. For example, `myRegistry`.
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? location;
  /// **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
  final pulumi.Input<RegistryLogLevel>? logLevel;
  /// The MQTT configuration for this device registry.
  final pulumi.Input<MqttConfig>? mqttConfig;
  /// The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn't exist, no notification will be published but the state will still be stored in Cloud IoT Core.
  final pulumi.Input<StateNotificationConfig>? stateNotificationConfig;

  /// Creates a new [RegistryArgs].
  /// [credentials] The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.
  /// [eventNotificationConfigs] The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub/Sub topic for the device's registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.
  /// [httpConfig] The DeviceService (HTTP) configuration for this device registry.
  /// [id] The identifier of this device registry. For example, `myRegistry`.
  /// [location] Optional.
  /// [logLevel] **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
  /// [mqttConfig] The MQTT configuration for this device registry.
  /// [name] The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.
  /// [project] Optional.
  /// [stateNotificationConfig] The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn't exist, no notification will be published but the state will still be stored in Cloud IoT Core.
  RegistryArgs({
    this.credentials,
    this.eventNotificationConfigs,
    this.httpConfig,
    this.id,
    this.location,
    this.logLevel,
    this.mqttConfig,
    this.name,
    this.project,
    this.stateNotificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<List<RegistryCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<RegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventNotificationConfigs': ?pulumi.Input.mapOptionalInputValue<List<EventNotificationConfig>, List<Map<String, dynamic>>>(eventNotificationConfigs, (value) => pulumi.Input.encodeList<EventNotificationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpConfig': ?pulumi.Input.mapOptionalInputValue<HttpConfig, Map<String, dynamic>>(httpConfig, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'logLevel': ?pulumi.Input.mapOptionalInputValue<RegistryLogLevel, String>(logLevel, (value) => value.wireValue),
      'mqttConfig': ?pulumi.Input.mapOptionalInputValue<MqttConfig, Map<String, dynamic>>(mqttConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'stateNotificationConfig': ?pulumi.Input.mapOptionalInputValue<StateNotificationConfig, Map<String, dynamic>>(stateNotificationConfig, (value) => value.toMap()),
    };
  }

  factory RegistryArgs.fromMap(Map<String, dynamic> map) {
    return RegistryArgs(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryCredential>(guardedValue, (value) => RegistryCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventNotificationConfigs: (() { final guardedValue = map['eventNotificationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventNotificationConfig>(guardedValue, (value) => EventNotificationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpConfig: (() { final guardedValue = map['httpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryLogLevel.fromValue(guardedValue as String)); })(),
      mqttConfig: (() { final guardedValue = map['mqttConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MqttConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateNotificationConfig: (() { final guardedValue = map['stateNotificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StateNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


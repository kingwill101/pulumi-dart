// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_notification_config_response.dart';
import 'http_config_response.dart';
import 'mqtt_config_response.dart';
import 'registry_credential_response.dart';
import 'state_notification_config_response.dart';

/// Result data returned by getRegistry.
class GetRegistryResult {
  /// The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.
  final List<RegistryCredentialResponse>? credentials;
  /// The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub/Sub topic for the device's registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.
  final List<EventNotificationConfigResponse>? eventNotificationConfigs;
  /// The DeviceService (HTTP) configuration for this device registry.
  final HttpConfigResponse? httpConfig;
  /// **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
  final String? logLevel;
  /// The MQTT configuration for this device registry.
  final MqttConfigResponse? mqttConfig;
  /// The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.
  final String? name;
  /// The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn't exist, no notification will be published but the state will still be stored in Cloud IoT Core.
  final StateNotificationConfigResponse? stateNotificationConfig;

  /// Creates a new [GetRegistryResult].
  /// [credentials] The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.
  /// [eventNotificationConfigs] The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub/Sub topic for the device's registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.
  /// [httpConfig] The DeviceService (HTTP) configuration for this device registry.
  /// [logLevel] **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
  /// [mqttConfig] The MQTT configuration for this device registry.
  /// [name] The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.
  /// [stateNotificationConfig] The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn't exist, no notification will be published but the state will still be stored in Cloud IoT Core.
  const GetRegistryResult({
    this.credentials,
    this.eventNotificationConfigs,
    this.httpConfig,
    this.logLevel,
    this.mqttConfig,
    this.name,
    this.stateNotificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?(() { final guardedValue = credentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<RegistryCredentialResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'eventNotificationConfigs': ?(() { final guardedValue = eventNotificationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<EventNotificationConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'httpConfig': ?httpConfig?.toMap(),
      'logLevel': ?logLevel,
      'mqttConfig': ?mqttConfig?.toMap(),
      'name': ?name,
      'stateNotificationConfig': ?stateNotificationConfig?.toMap(),
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryCredentialResponse>(guardedValue, (value) => RegistryCredentialResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      eventNotificationConfigs: (() { final guardedValue = map['eventNotificationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventNotificationConfigResponse>(guardedValue, (value) => EventNotificationConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      httpConfig: (() { final guardedValue = map['httpConfig']; if (guardedValue == null) return null; return HttpConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mqttConfig: (() { final guardedValue = map['mqttConfig']; if (guardedValue == null) return null; return MqttConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateNotificationConfig: (() { final guardedValue = map['stateNotificationConfig']; if (guardedValue == null) return null; return StateNotificationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_config_response.dart';
import 'device_credential_response.dart';
import 'device_state_response.dart';
import 'gateway_config_response.dart';
import 'status_response.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  final bool? blocked;
  /// The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  final DeviceConfigResponse? config;
  /// The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  final List<DeviceCredentialResponse>? credentials;
  /// Gateway-related configuration and state.
  final GatewayConfigResponse? gatewayConfig;
  /// [Output only] The last time a cloud-to-device config version acknowledgment was received from the device. This field is only for configurations sent through MQTT.
  final String? lastConfigAckTime;
  /// [Output only] The last time a cloud-to-device config version was sent to the device.
  final String? lastConfigSendTime;
  /// [Output only] The error message of the most recent error, such as a failure to publish to Cloud Pub/Sub. 'last_error_time' is the timestamp of this field. If no errors have occurred, this field has an empty message and the status code 0 == OK. Otherwise, this field is expected to have a status code other than OK.
  final StatusResponse? lastErrorStatus;
  /// [Output only] The time the most recent error occurred, such as a failure to publish to Cloud Pub/Sub. This field is the timestamp of 'last_error_status'.
  final String? lastErrorTime;
  /// [Output only] The last time a telemetry event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  final String? lastEventTime;
  /// [Output only] The last time an MQTT `PINGREQ` was received. This field applies only to devices connecting through MQTT. MQTT clients usually only send `PINGREQ` messages if the connection is idle, and no other messages have been sent. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  final String? lastHeartbeatTime;
  /// [Output only] The last time a state event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  final String? lastStateTime;
  /// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  final String? logLevel;
  /// The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  final Map<String, String>? metadata;
  /// The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  final String? name;
  /// [Output only] A server-defined unique numeric ID for the device. This is a more compact way to identify devices, and it is globally unique.
  final String? numId;
  /// [Output only] The state most recently received from the device. If no state has been reported, this field is not present.
  final DeviceStateResponse? state;

  /// Creates a new [GetDeviceResult].
  /// [blocked] If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  /// [config] The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  /// [credentials] The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  /// [gatewayConfig] Gateway-related configuration and state.
  /// [lastConfigAckTime] [Output only] The last time a cloud-to-device config version acknowledgment was received from the device. This field is only for configurations sent through MQTT.
  /// [lastConfigSendTime] [Output only] The last time a cloud-to-device config version was sent to the device.
  /// [lastErrorStatus] [Output only] The error message of the most recent error, such as a failure to publish to Cloud Pub/Sub. 'last_error_time' is the timestamp of this field. If no errors have occurred, this field has an empty message and the status code 0 == OK. Otherwise, this field is expected to have a status code other than OK.
  /// [lastErrorTime] [Output only] The time the most recent error occurred, such as a failure to publish to Cloud Pub/Sub. This field is the timestamp of 'last_error_status'.
  /// [lastEventTime] [Output only] The last time a telemetry event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  /// [lastHeartbeatTime] [Output only] The last time an MQTT `PINGREQ` was received. This field applies only to devices connecting through MQTT. MQTT clients usually only send `PINGREQ` messages if the connection is idle, and no other messages have been sent. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  /// [lastStateTime] [Output only] The last time a state event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  /// [logLevel] **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  /// [metadata] The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  /// [name] The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  /// [numId] [Output only] A server-defined unique numeric ID for the device. This is a more compact way to identify devices, and it is globally unique.
  /// [state] [Output only] The state most recently received from the device. If no state has been reported, this field is not present.
  const GetDeviceResult({
    this.blocked,
    this.config,
    this.credentials,
    this.gatewayConfig,
    this.lastConfigAckTime,
    this.lastConfigSendTime,
    this.lastErrorStatus,
    this.lastErrorTime,
    this.lastEventTime,
    this.lastHeartbeatTime,
    this.lastStateTime,
    this.logLevel,
    this.metadata,
    this.name,
    this.numId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocked': ?blocked,
      'config': ?config?.toMap(),
      'credentials': ?(() { final guardedValue = credentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeviceCredentialResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayConfig': ?gatewayConfig?.toMap(),
      'lastConfigAckTime': ?lastConfigAckTime,
      'lastConfigSendTime': ?lastConfigSendTime,
      'lastErrorStatus': ?lastErrorStatus?.toMap(),
      'lastErrorTime': ?lastErrorTime,
      'lastEventTime': ?lastEventTime,
      'lastHeartbeatTime': ?lastHeartbeatTime,
      'lastStateTime': ?lastStateTime,
      'logLevel': ?logLevel,
      'metadata': ?metadata,
      'name': ?name,
      'numId': ?numId,
      'state': ?state?.toMap(),
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      blocked: (() { final guardedValue = map['blocked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return DeviceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeviceCredentialResponse>(guardedValue, (value) => DeviceCredentialResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayConfig: (() { final guardedValue = map['gatewayConfig']; if (guardedValue == null) return null; return GatewayConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastConfigAckTime: (() { final guardedValue = map['lastConfigAckTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastConfigSendTime: (() { final guardedValue = map['lastConfigSendTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastErrorStatus: (() { final guardedValue = map['lastErrorStatus']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastErrorTime: (() { final guardedValue = map['lastErrorTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastEventTime: (() { final guardedValue = map['lastEventTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastHeartbeatTime: (() { final guardedValue = map['lastHeartbeatTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastStateTime: (() { final guardedValue = map['lastStateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numId: (() { final guardedValue = map['numId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return DeviceStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

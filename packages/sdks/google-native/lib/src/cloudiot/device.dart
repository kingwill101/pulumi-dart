import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_args.dart';
import 'device_config_response.dart';
import 'device_state_response.dart';
import 'gateway_config_response.dart';
import 'status_response.dart';

/// Creates a device in a device registry.
class Device extends pulumi.CustomResource {
  /// If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  late final pulumi.Output<bool> blocked;
  /// The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  late final pulumi.Output<DeviceConfigResponse> config;
  /// The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  late final pulumi.Output<List<Map<String, dynamic>>> credentials;
  /// Gateway-related configuration and state.
  late final pulumi.Output<GatewayConfigResponse> gatewayConfig;
  /// [Output only] The last time a cloud-to-device config version acknowledgment was received from the device. This field is only for configurations sent through MQTT.
  late final pulumi.Output<String> lastConfigAckTime;
  /// [Output only] The last time a cloud-to-device config version was sent to the device.
  late final pulumi.Output<String> lastConfigSendTime;
  /// [Output only] The error message of the most recent error, such as a failure to publish to Cloud Pub/Sub. 'last_error_time' is the timestamp of this field. If no errors have occurred, this field has an empty message and the status code 0 == OK. Otherwise, this field is expected to have a status code other than OK.
  late final pulumi.Output<StatusResponse> lastErrorStatus;
  /// [Output only] The time the most recent error occurred, such as a failure to publish to Cloud Pub/Sub. This field is the timestamp of 'last_error_status'.
  late final pulumi.Output<String> lastErrorTime;
  /// [Output only] The last time a telemetry event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  late final pulumi.Output<String> lastEventTime;
  /// [Output only] The last time an MQTT `PINGREQ` was received. This field applies only to devices connecting through MQTT. MQTT clients usually only send `PINGREQ` messages if the connection is idle, and no other messages have been sent. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  late final pulumi.Output<String> lastHeartbeatTime;
  /// [Output only] The last time a state event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  late final pulumi.Output<String> lastStateTime;
  late final pulumi.Output<String> location;
  /// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  late final pulumi.Output<String> logLevel;
  /// The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  late final pulumi.Output<Map<String, String>> metadata;
  /// The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  late final pulumi.Output<String> name;
  /// [Output only] A server-defined unique numeric ID for the device. This is a more compact way to identify devices, and it is globally unique.
  late final pulumi.Output<String> numId;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> registryId;
  /// [Output only] The state most recently received from the device. If no state has been reported, this field is not present.
  late final pulumi.Output<DeviceStateResponse> state;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_cloudiot_v1_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(
    String name, {
    DeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudiot/v1:Device',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blocked = registerOutput<bool>('blocked');
    config = registerOutput<DeviceConfigResponse>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    credentials = registerOutput<List<Map<String, dynamic>>>('credentials');
    gatewayConfig = registerOutput<GatewayConfigResponse>('gatewayConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastConfigAckTime = registerOutput<String>('lastConfigAckTime');
    lastConfigSendTime = registerOutput<String>('lastConfigSendTime');
    lastErrorStatus = registerOutput<StatusResponse>('lastErrorStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastErrorTime = registerOutput<String>('lastErrorTime');
    lastEventTime = registerOutput<String>('lastEventTime');
    lastHeartbeatTime = registerOutput<String>('lastHeartbeatTime');
    lastStateTime = registerOutput<String>('lastStateTime');
    location = registerOutput<String>('location');
    logLevel = registerOutput<String>('logLevel');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    numId = registerOutput<String>('numId');
    project = registerOutput<String>('project');
    registryId = registerOutput<String>('registryId');
    state = registerOutput<DeviceStateResponse>('state', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

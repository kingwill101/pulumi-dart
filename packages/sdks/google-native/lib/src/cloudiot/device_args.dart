// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_config.dart';
import 'device_credential.dart';
import 'device_log_level.dart';
import 'gateway_config.dart';

/// {@template pulumi_cloudiot_v1_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_device_args_doc}
class DeviceArgs {
  /// If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  final pulumi.Input<bool>? blocked;
  /// The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  final pulumi.Input<DeviceConfig>? config;
  /// The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  final pulumi.Input<List<DeviceCredential>>? credentials;
  /// Gateway-related configuration and state.
  final pulumi.Input<GatewayConfig>? gatewayConfig;
  /// The user-defined device identifier. The device ID must be unique within a device registry.
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? location;
  /// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  final pulumi.Input<DeviceLogLevel>? logLevel;
  /// The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  /// Creates a new [DeviceArgs].
  /// [blocked] If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  /// [config] The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  /// [credentials] The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  /// [gatewayConfig] Gateway-related configuration and state.
  /// [id] The user-defined device identifier. The device ID must be unique within a device registry.
  /// [location] Optional.
  /// [logLevel] **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  /// [metadata] The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  /// [name] The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  /// [project] Optional.
  /// [registryId] Required.
  DeviceArgs({
    this.blocked,
    this.config,
    this.credentials,
    this.gatewayConfig,
    this.id,
    this.location,
    this.logLevel,
    this.metadata,
    this.name,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocked': ?blocked,
      'config': ?pulumi.Input.mapOptionalInputValue<DeviceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'credentials': ?pulumi.Input.mapOptionalInputValue<List<DeviceCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<DeviceCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayConfig': ?pulumi.Input.mapOptionalInputValue<GatewayConfig, Map<String, dynamic>>(gatewayConfig, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'logLevel': ?pulumi.Input.mapOptionalInputValue<DeviceLogLevel, String>(logLevel, (value) => value.wireValue),
      'metadata': ?metadata,
      'name': ?name,
      'project': ?project,
      'registryId': registryId,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      blocked: (() { final guardedValue = map['blocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceCredential>(guardedValue, (value) => DeviceCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayConfig: (() { final guardedValue = map['gatewayConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceLogLevel.fromValue(guardedValue as String)); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: pulumi.Input.fromValue(map['registryId'] as String),
    );
  }
}


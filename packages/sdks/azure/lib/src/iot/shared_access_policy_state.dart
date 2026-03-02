// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedAccessPolicy resources.
class SharedAccessPolicyState {
  /// Adds `DeviceConnect` permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints.
  ///
  /// > **Note:** At least one of `registry_read`, `registry_write`, `service_connect`, `device_connect` permissions must be set to `true`.
  final pulumi.Input<bool>? deviceConnect;
  /// The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubName;
  /// Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The primary connection string of the Shared Access Policy.
  final pulumi.Input<String>? primaryConnectionString;
  /// The primary key used to create the authentication token.
  final pulumi.Input<String>? primaryKey;
  /// Adds `RegistryRead` permission to this Shared Access Account. It allows read access to the identity registry.
  final pulumi.Input<bool>? registryRead;
  /// Adds `RegistryWrite` permission to this Shared Access Account. It allows write access to the identity registry.
  ///
  /// > **Note:** When `registry_write` is set to `true`, `registry_read` must also be set to true. This is a limitation of the Azure REST API
  final pulumi.Input<bool>? registryWrite;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary connection string of the Shared Access Policy.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The secondary key used to create the authentication token.
  final pulumi.Input<String>? secondaryKey;
  /// Adds `ServiceConnect` permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints.
  final pulumi.Input<bool>? serviceConnect;

  /// Creates a new [SharedAccessPolicyState].
  /// [deviceConnect] Adds `DeviceConnect` permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints.
  /// [iothubName] The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The primary connection string of the Shared Access Policy.
  /// [primaryKey] The primary key used to create the authentication token.
  /// [registryRead] Adds `RegistryRead` permission to this Shared Access Account. It allows read access to the identity registry.
  /// [registryWrite] Adds `RegistryWrite` permission to this Shared Access Account. It allows write access to the identity registry.
  /// [resourceGroupName] The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  /// [secondaryConnectionString] The secondary connection string of the Shared Access Policy.
  /// [secondaryKey] The secondary key used to create the authentication token.
  /// [serviceConnect] Adds `ServiceConnect` permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints.
  SharedAccessPolicyState({
    this.deviceConnect,
    this.iothubName,
    this.name,
    this.primaryConnectionString,
    this.primaryKey,
    this.registryRead,
    this.registryWrite,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryKey,
    this.serviceConnect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceConnect': ?deviceConnect,
      'iothubName': ?iothubName,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'registryRead': ?registryRead,
      'registryWrite': ?registryWrite,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
      'serviceConnect': ?serviceConnect,
    };
  }

  factory SharedAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return SharedAccessPolicyState(
      deviceConnect: map['deviceConnect'] == null ? null : (map['deviceConnect']! as bool).input(),
      iothubName: map['iothubName'] == null ? null : (map['iothubName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      registryRead: map['registryRead'] == null ? null : (map['registryRead']! as bool).input(),
      registryWrite: map['registryWrite'] == null ? null : (map['registryWrite']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      serviceConnect: map['serviceConnect'] == null ? null : (map['serviceConnect']! as bool).input(),
    );
  }
}


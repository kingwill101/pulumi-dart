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
    pulumi.Output<bool>? deviceConnect,
    pulumi.Output<String>? iothubName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<bool>? registryRead,
    pulumi.Output<bool>? registryWrite,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<bool>? serviceConnect,
  }) :
      deviceConnect = pulumi.Input.asOptionalInput<bool>(deviceConnect),
      iothubName = pulumi.Input.asOptionalInput<String>(iothubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      registryRead = pulumi.Input.asOptionalInput<bool>(registryRead),
      registryWrite = pulumi.Input.asOptionalInput<bool>(registryWrite),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      serviceConnect = pulumi.Input.asOptionalInput<bool>(serviceConnect);

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
      deviceConnect: map['deviceConnect'] == null ? null : pulumi.Output.create<bool>(map['deviceConnect'] as bool),
      iothubName: map['iothubName'] == null ? null : pulumi.Output.create<String>(map['iothubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      registryRead: map['registryRead'] == null ? null : pulumi.Output.create<bool>(map['registryRead'] as bool),
      registryWrite: map['registryWrite'] == null ? null : pulumi.Output.create<bool>(map['registryWrite'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      serviceConnect: map['serviceConnect'] == null ? null : pulumi.Output.create<bool>(map['serviceConnect'] as bool),
    );
  }
}


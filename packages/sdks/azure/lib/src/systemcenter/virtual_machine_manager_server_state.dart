// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualMachineManagerServer resources.
class VirtualMachineManagerServerState {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;
  /// The FQDN of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? fqdn;
  /// The Azure Region where the System Center Virtual Machine Manager Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The port on which the System Center Virtual Machine Manager Server is listening. Possible values are between `1` and `65535`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? port;
  /// The name of the Resource Group where the System Center Virtual Machine Manager should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Server.
  final pulumi.Input<Map<String, String>>? tags;
  /// The username that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? username;

  /// Creates a new [VirtualMachineManagerServerState].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [fqdn] The FQDN of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Server should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [password] The password that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [port] The port on which the System Center Virtual Machine Manager Server is listening. Possible values are between `1` and `65535`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Manager should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Server.
  /// [username] The username that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  const VirtualMachineManagerServerState({
    this.customLocationId,
    this.fqdn,
    this.location,
    this.name,
    this.password,
    this.port,
    this.resourceGroupName,
    this.tags,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'fqdn': ?fqdn,
      'location': ?location,
      'name': ?name,
      'password': ?password,
      'port': ?port,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'username': ?username,
    };
  }

  factory VirtualMachineManagerServerState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerServerState(
      customLocationId: (() { final guardedValue = map['customLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

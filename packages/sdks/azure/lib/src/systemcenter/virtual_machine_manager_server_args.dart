// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_systemcenter_virtual_machine_manager_server_virtual_machine_manager_server_args_doc}
/// The set of arguments for VirtualMachineManagerServer.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_virtual_machine_manager_server_virtual_machine_manager_server_args_doc}
class VirtualMachineManagerServerArgs {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;

  /// The FQDN of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> fqdn;

  /// The Azure Region where the System Center Virtual Machine Manager Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// The name of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The password that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> password;

  /// The port on which the System Center Virtual Machine Manager Server is listening. Possible values are between `1` and `65535`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? port;

  /// The name of the Resource Group where the System Center Virtual Machine Manager should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Server.
  final pulumi.Input<Map<String, String>>? tags;

  /// The username that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [VirtualMachineManagerServerArgs].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [fqdn] The FQDN of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Server should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [password] The password that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [port] The port on which the System Center Virtual Machine Manager Server is listening. Possible values are between `1` and `65535`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Manager should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Server.
  /// [username] The username that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  VirtualMachineManagerServerArgs({
    required this.customLocationId,
    required this.fqdn,
    this.location,
    this.name,
    required this.password,
    this.port,
    required this.resourceGroupName,
    this.tags,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'fqdn': fqdn,
      'location': ?location,
      'name': ?name,
      'password': password,
      'port': ?port,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'username': username,
    };
  }

  factory VirtualMachineManagerServerArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerServerArgs(
      customLocationId: pulumi.Input.fromValue(
        map['customLocationId'] as String,
      ),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

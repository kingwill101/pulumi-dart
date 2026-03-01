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
    required pulumi.Output<String> customLocationId,
    required pulumi.Output<String> fqdn,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> password,
    pulumi.Output<int>? port,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> username,
  }) :
      customLocationId = pulumi.Input.asInput<String>(customLocationId),
      fqdn = pulumi.Input.asInput<String>(fqdn),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      username = pulumi.Input.asInput<String>(username);

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
      customLocationId: pulumi.Output.create<String>(map['customLocationId'] as String),
      fqdn: pulumi.Output.create<String>(map['fqdn'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}


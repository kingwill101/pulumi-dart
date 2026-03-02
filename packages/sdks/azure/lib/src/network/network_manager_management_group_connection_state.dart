// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerManagementGroupConnection resources.
class NetworkManagerManagementGroupConnectionState {
  /// The Connection state of the Network Manager Management Group Connection.
  final pulumi.Input<String>? connectionState;
  /// A description of the Network Manager Management Group Connection.
  final pulumi.Input<String>? description;
  /// Specifies the ID of the target Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managementGroupId;
  /// Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkManagerId;

  /// Creates a new [NetworkManagerManagementGroupConnectionState].
  /// [connectionState] The Connection state of the Network Manager Management Group Connection.
  /// [description] A description of the Network Manager Management Group Connection.
  /// [managementGroupId] Specifies the ID of the target Management Group. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created.
  NetworkManagerManagementGroupConnectionState({
    this.connectionState,
    this.description,
    this.managementGroupId,
    this.name,
    this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionState': ?connectionState,
      'description': ?description,
      'managementGroupId': ?managementGroupId,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
    };
  }

  factory NetworkManagerManagementGroupConnectionState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerManagementGroupConnectionState(
      connectionState: map['connectionState'] == null ? null : (map['connectionState']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      managementGroupId: map['managementGroupId'] == null ? null : (map['managementGroupId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkManagerId: map['networkManagerId'] == null ? null : (map['networkManagerId']! as String).input(),
    );
  }
}


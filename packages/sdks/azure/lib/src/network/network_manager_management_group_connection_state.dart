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
    pulumi.Output<String>? connectionState,
    pulumi.Output<String>? description,
    pulumi.Output<String>? managementGroupId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkManagerId,
  }) :
      connectionState = pulumi.Input.asOptionalInput<String>(connectionState),
      description = pulumi.Input.asOptionalInput<String>(description),
      managementGroupId = pulumi.Input.asOptionalInput<String>(managementGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId);

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
      connectionState: map['connectionState'] == null ? null : pulumi.Output.create<String>(map['connectionState'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      managementGroupId: map['managementGroupId'] == null ? null : pulumi.Output.create<String>(map['managementGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
    );
  }
}


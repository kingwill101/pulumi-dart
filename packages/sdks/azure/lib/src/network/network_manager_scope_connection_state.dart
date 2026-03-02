// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerScopeConnection resources.
class NetworkManagerScopeConnectionState {
  /// The Connection state of the Network Manager Scope Connection.
  final pulumi.Input<String>? connectionState;
  /// A description of the Network Manager Scope Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  final pulumi.Input<String>? networkManagerId;
  /// Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID.
  final pulumi.Input<String>? targetScopeId;
  /// Specifies the Tenant ID of the Resource which the Network Manager is connected to.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [NetworkManagerScopeConnectionState].
  /// [connectionState] The Connection state of the Network Manager Scope Connection.
  /// [description] A description of the Network Manager Scope Connection.
  /// [name] Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  /// [targetScopeId] Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID.
  /// [tenantId] Specifies the Tenant ID of the Resource which the Network Manager is connected to.
  NetworkManagerScopeConnectionState({
    this.connectionState,
    this.description,
    this.name,
    this.networkManagerId,
    this.targetScopeId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionState': ?connectionState,
      'description': ?description,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'targetScopeId': ?targetScopeId,
      'tenantId': ?tenantId,
    };
  }

  factory NetworkManagerScopeConnectionState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerScopeConnectionState(
      connectionState: map['connectionState'] == null ? null : (map['connectionState'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkManagerId: map['networkManagerId'] == null ? null : (map['networkManagerId'] as String).input(),
      targetScopeId: map['targetScopeId'] == null ? null : (map['targetScopeId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}


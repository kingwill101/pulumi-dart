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
    pulumi.Output<String>? connectionState,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkManagerId,
    pulumi.Output<String>? targetScopeId,
    pulumi.Output<String>? tenantId,
  }) :
      connectionState = pulumi.Input.asOptionalInput<String>(connectionState),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId),
      targetScopeId = pulumi.Input.asOptionalInput<String>(targetScopeId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      connectionState: map['connectionState'] == null ? null : pulumi.Output.create<String>(map['connectionState'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
      targetScopeId: map['targetScopeId'] == null ? null : pulumi.Output.create<String>(map['targetScopeId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceNetworkOutboundRuleFqdn resources.
class WorkspaceNetworkOutboundRuleFqdnState {
  /// Specifies the fully qualified domain name to allow for outbound traffic.
  final pulumi.Input<String>? destinationFqdn;
  /// Specifies the name of the Machine Learning Workspace FQDN Network Outbound Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceNetworkOutboundRuleFqdnState].
  /// [destinationFqdn] Specifies the fully qualified domain name to allow for outbound traffic.
  /// [name] Specifies the name of the Machine Learning Workspace FQDN Network Outbound Rule. Changing this forces a new resource to be created.
  /// [workspaceId] Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  WorkspaceNetworkOutboundRuleFqdnState({
    pulumi.Output<String>? destinationFqdn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? workspaceId,
  }) :
      destinationFqdn = pulumi.Input.asOptionalInput<String>(destinationFqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFqdn': ?destinationFqdn,
      'name': ?name,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceNetworkOutboundRuleFqdnState.fromMap(Map<String, dynamic> map) {
    return WorkspaceNetworkOutboundRuleFqdnState(
      destinationFqdn: map['destinationFqdn'] == null ? null : pulumi.Output.create<String>(map['destinationFqdn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}


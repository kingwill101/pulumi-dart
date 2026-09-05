// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_deployment_network_manager_deployment_args_doc}
/// The set of arguments for NetworkManagerDeployment.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_deployment_network_manager_deployment_args_doc}
class NetworkManagerDeploymentArgs {
  /// A list of Network Manager Configuration IDs which should be aligned with `scopeAccess`.
  final pulumi.Input<List<String>> configurationIds;
  /// Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String> networkManagerId;
  /// Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String> scopeAccess;
  /// A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  final pulumi.Input<Map<String, String>?>? triggers;

  /// Creates a new [NetworkManagerDeploymentArgs].
  /// [configurationIds] A list of Network Manager Configuration IDs which should be aligned with `scopeAccess`.
  /// [location] Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  /// [scopeAccess] Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  /// [triggers] A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  const NetworkManagerDeploymentArgs({
    required this.configurationIds,
    this.location,
    required this.networkManagerId,
    required this.scopeAccess,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationIds': configurationIds,
      'location': ?location,
      'networkManagerId': networkManagerId,
      'scopeAccess': scopeAccess,
      'triggers': ?triggers,
    };
  }

  factory NetworkManagerDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerDeploymentArgs(
      configurationIds: pulumi.Input.fromValue((map['configurationIds'] as List).cast<String>()),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: pulumi.Input.fromValue(map['networkManagerId'] as String),
      scopeAccess: pulumi.Input.fromValue(map['scopeAccess'] as String),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

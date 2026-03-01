// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerDeployment resources.
class NetworkManagerDeploymentState {
  /// A list of Network Manager Configuration IDs which should be aligned with `scope_access`.
  final pulumi.Input<List<String>>? configurationIds;
  /// Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String>? networkManagerId;
  /// Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String>? scopeAccess;
  /// A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [NetworkManagerDeploymentState].
  /// [configurationIds] A list of Network Manager Configuration IDs which should be aligned with `scope_access`.
  /// [location] Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  /// [scopeAccess] Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  /// [triggers] A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  NetworkManagerDeploymentState({
    pulumi.Output<List<String>>? configurationIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkManagerId,
    pulumi.Output<String>? scopeAccess,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      configurationIds = pulumi.Input.asOptionalInput<List<String>>(configurationIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId),
      scopeAccess = pulumi.Input.asOptionalInput<String>(scopeAccess),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationIds': ?configurationIds,
      'location': ?location,
      'networkManagerId': ?networkManagerId,
      'scopeAccess': ?scopeAccess,
      'triggers': ?triggers,
    };
  }

  factory NetworkManagerDeploymentState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerDeploymentState(
      configurationIds: map['configurationIds'] == null ? null : pulumi.Output.create<List<String>>((map['configurationIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
      scopeAccess: map['scopeAccess'] == null ? null : pulumi.Output.create<String>(map['scopeAccess'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}


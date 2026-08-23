// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerDeployment resources.
class NetworkManagerDeploymentState {
  /// A list of Network Manager Configuration IDs which should be aligned with `scopeAccess`.
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
  /// [configurationIds] A list of Network Manager Configuration IDs which should be aligned with `scopeAccess`.
  /// [location] Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  /// [scopeAccess] Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  /// [triggers] A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  const NetworkManagerDeploymentState({
    this.configurationIds,
    this.location,
    this.networkManagerId,
    this.scopeAccess,
    this.triggers,
  });

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
      configurationIds: (() { final guardedValue = map['configurationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeAccess: (() { final guardedValue = map['scopeAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

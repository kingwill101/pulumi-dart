// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SoarNetwork resources.
class SoarNetworkState {
  /// Subnet in CIDR format.
  final pulumi.Input<String>? address;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// SoarNetwork name, limited to 4096 characters.
  final pulumi.Input<String>? displayName;
  /// SoarNetwork associated logical environments.
  final pulumi.Input<String>? environmentsJson;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the SoarNetwork.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/soarNetworks/{soar_network}
  final pulumi.Input<String>? name;
  /// SoarNetwork priority.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Id of the soarNetwork record.
  final pulumi.Input<String>? soarNetworkId;

  /// Creates a new [SoarNetworkState].
  /// [address] Subnet in CIDR format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] SoarNetwork name, limited to 4096 characters.
  /// [environmentsJson] SoarNetwork associated logical environments.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the SoarNetwork.
  /// [priority] SoarNetwork priority.
  /// [project] The ID of the project in which the resource belongs.
  /// [soarNetworkId] Id of the soarNetwork record.
  const SoarNetworkState({
    this.address,
    this.deletionPolicy,
    this.displayName,
    this.environmentsJson,
    this.instance,
    this.location,
    this.name,
    this.priority,
    this.project,
    this.soarNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'environmentsJson': ?environmentsJson,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'soarNetworkId': ?soarNetworkId,
    };
  }

  factory SoarNetworkState.fromMap(Map<String, dynamic> map) {
    return SoarNetworkState(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentsJson: (() { final guardedValue = map['environmentsJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      soarNetworkId: (() { final guardedValue = map['soarNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_soar_network_soar_network_args_doc}
/// The set of arguments for SoarNetwork.
/// {@endtemplate}
/// {@macro pulumi_chronicle_soar_network_soar_network_args_doc}
class SoarNetworkArgs {
  /// Subnet in CIDR format.
  final pulumi.Input<String> address;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// SoarNetwork name, limited to 4096 characters.
  final pulumi.Input<String> displayName;
  /// SoarNetwork associated logical environments.
  final pulumi.Input<String> environmentsJson;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// SoarNetwork priority.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [SoarNetworkArgs].
  /// [address] Subnet in CIDR format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] SoarNetwork name, limited to 4096 characters.
  /// [environmentsJson] SoarNetwork associated logical environments.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [priority] SoarNetwork priority.
  /// [project] The ID of the project in which the resource belongs.
  const SoarNetworkArgs({
    required this.address,
    this.deletionPolicy,
    required this.displayName,
    required this.environmentsJson,
    required this.instance,
    required this.location,
    this.priority,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'environmentsJson': environmentsJson,
      'instance': instance,
      'location': location,
      'priority': ?priority,
      'project': ?project,
    };
  }

  factory SoarNetworkArgs.fromMap(Map<String, dynamic> map) {
    return SoarNetworkArgs(
      address: pulumi.Input.fromValue(map['address'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      environmentsJson: pulumi.Input.fromValue(map['environmentsJson'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

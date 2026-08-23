// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_connection_config.dart';
import 'multicast_domain_ull_multicast_domain.dart';

/// {@template pulumi_networkservices_multicast_domain_multicast_domain_args_doc}
/// The set of arguments for MulticastDomain.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_domain_multicast_domain_args_doc}
class MulticastDomainArgs {
  /// The resource name of the multicast admin VPC network.
  /// Use the following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  final pulumi.Input<String> adminNetwork;
  /// VPC connectivity information.
  /// Structure is documented below.
  final pulumi.Input<MulticastDomainConnectionConfig> connectionConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional text description of the multicast domain.
  final pulumi.Input<String>? description;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The multicast domain group this domain should be associated with.
  /// Use the following format:
  /// `projects/{project}/locations/global/multicastDomainGroups/{multicast_domain_group}`.
  final pulumi.Input<String>? multicastDomainGroup;
  /// A unique name for the multicast domain.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastDomainId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Information for an Ultra-Low-Latency multicast domain.
  /// Structure is documented below.
  final pulumi.Input<MulticastDomainUllMulticastDomain>? ullMulticastDomain;

  /// Creates a new [MulticastDomainArgs].
  /// [adminNetwork] The resource name of the multicast admin VPC network.
  /// [connectionConfig] VPC connectivity information.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional text description of the multicast domain.
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastDomainGroup] The multicast domain group this domain should be associated with.
  /// [multicastDomainId] A unique name for the multicast domain.
  /// [project] The ID of the project in which the resource belongs.
  /// [ullMulticastDomain] Information for an Ultra-Low-Latency multicast domain.
  const MulticastDomainArgs({
    required this.adminNetwork,
    required this.connectionConfig,
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.multicastDomainGroup,
    required this.multicastDomainId,
    this.project,
    this.ullMulticastDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNetwork': adminNetwork,
      'connectionConfig': pulumi.Input.mapInputValue<MulticastDomainConnectionConfig, Map<String, dynamic>>(connectionConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'multicastDomainGroup': ?multicastDomainGroup,
      'multicastDomainId': multicastDomainId,
      'project': ?project,
      'ullMulticastDomain': ?pulumi.Input.mapOptionalInputValue<MulticastDomainUllMulticastDomain, Map<String, dynamic>>(ullMulticastDomain, (value) => value.toMap()),
    };
  }

  factory MulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainArgs(
      adminNetwork: pulumi.Input.fromValue(map['adminNetwork'] as String),
      connectionConfig: pulumi.Input.fromValue(MulticastDomainConnectionConfig.fromMap((map['connectionConfig']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      multicastDomainGroup: (() { final guardedValue = map['multicastDomainGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastDomainId: pulumi.Input.fromValue(map['multicastDomainId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ullMulticastDomain: (() { final guardedValue = map['ullMulticastDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MulticastDomainUllMulticastDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

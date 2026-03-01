// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_connection_config.dart';

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
  /// An optional text description of the multicast domain.
  final pulumi.Input<String>? description;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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

  /// Creates a new [MulticastDomainArgs].
  /// [adminNetwork] The resource name of the multicast admin VPC network.
  /// [connectionConfig] VPC connectivity information.
  /// [description] An optional text description of the multicast domain.
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastDomainGroup] The multicast domain group this domain should be associated with.
  /// [multicastDomainId] A unique name for the multicast domain.
  /// [project] The ID of the project in which the resource belongs.
  MulticastDomainArgs({
    required pulumi.Output<String> adminNetwork,
    required pulumi.Output<MulticastDomainConnectionConfig> connectionConfig,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? multicastDomainGroup,
    required pulumi.Output<String> multicastDomainId,
    pulumi.Output<String>? project,
  }) :
      adminNetwork = pulumi.Input.asInput<String>(adminNetwork),
      connectionConfig = pulumi.Input.asInput<MulticastDomainConnectionConfig>(connectionConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      multicastDomainGroup = pulumi.Input.asOptionalInput<String>(multicastDomainGroup),
      multicastDomainId = pulumi.Input.asInput<String>(multicastDomainId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNetwork': adminNetwork,
      'connectionConfig': pulumi.Input.mapInputValue<MulticastDomainConnectionConfig, Map<String, dynamic>>(connectionConfig, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'multicastDomainGroup': ?multicastDomainGroup,
      'multicastDomainId': multicastDomainId,
      'project': ?project,
    };
  }

  factory MulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainArgs(
      adminNetwork: pulumi.Output.create<String>(map['adminNetwork'] as String),
      connectionConfig: pulumi.Output.create<MulticastDomainConnectionConfig>(MulticastDomainConnectionConfig.fromMap((map['connectionConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      multicastDomainGroup: map['multicastDomainGroup'] == null ? null : pulumi.Output.create<String>(map['multicastDomainGroup'] as String),
      multicastDomainId: pulumi.Output.create<String>(map['multicastDomainId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


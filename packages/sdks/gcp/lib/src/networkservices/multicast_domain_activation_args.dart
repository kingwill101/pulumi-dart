// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_activation_traffic_spec.dart';

/// {@template pulumi_networkservices_multicast_domain_activation_multicast_domain_activation_args_doc}
/// The set of arguments for MulticastDomainActivation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_domain_activation_multicast_domain_activation_args_doc}
class MulticastDomainActivationArgs {
  /// An optional text description of the multicast domain activation.
  final pulumi.Input<String>? description;
  /// Option to allow disabling placement policy for multicast infrastructure.
  /// Only applicable if the activation is for a domain associating with a
  /// multicast domain group.
  final pulumi.Input<bool>? disablePlacementPolicy;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The resource name of the multicast domain to activate.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  final pulumi.Input<String> multicastDomain;
  /// A unique name for the multicast domain activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastDomainActivationId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the traffic volume and multicast group scale parameters that are
  /// used to set up multicast infrastructure for a multicast domain in a zone.
  /// Structure is documented below.
  final pulumi.Input<MulticastDomainActivationTrafficSpec>? trafficSpec;

  /// Creates a new [MulticastDomainActivationArgs].
  /// [description] An optional text description of the multicast domain activation.
  /// [disablePlacementPolicy] Option to allow disabling placement policy for multicast infrastructure.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastDomain] The resource name of the multicast domain to activate.
  /// [multicastDomainActivationId] A unique name for the multicast domain activation.
  /// [project] The ID of the project in which the resource belongs.
  /// [trafficSpec] Specifies the traffic volume and multicast group scale parameters that are
  MulticastDomainActivationArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disablePlacementPolicy,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    required pulumi.Output<String> multicastDomain,
    required pulumi.Output<String> multicastDomainActivationId,
    pulumi.Output<String>? project,
    pulumi.Output<MulticastDomainActivationTrafficSpec>? trafficSpec,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disablePlacementPolicy = pulumi.Input.asOptionalInput<bool>(disablePlacementPolicy),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      multicastDomain = pulumi.Input.asInput<String>(multicastDomain),
      multicastDomainActivationId = pulumi.Input.asInput<String>(multicastDomainActivationId),
      project = pulumi.Input.asOptionalInput<String>(project),
      trafficSpec = pulumi.Input.asOptionalInput<MulticastDomainActivationTrafficSpec>(trafficSpec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disablePlacementPolicy': ?disablePlacementPolicy,
      'labels': ?labels,
      'location': location,
      'multicastDomain': multicastDomain,
      'multicastDomainActivationId': multicastDomainActivationId,
      'project': ?project,
      'trafficSpec': ?pulumi.Input.mapOptionalInputValue<MulticastDomainActivationTrafficSpec, Map<String, dynamic>>(trafficSpec, (value) => value.toMap()),
    };
  }

  factory MulticastDomainActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainActivationArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disablePlacementPolicy: map['disablePlacementPolicy'] == null ? null : pulumi.Output.create<bool>(map['disablePlacementPolicy'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      multicastDomain: pulumi.Output.create<String>(map['multicastDomain'] as String),
      multicastDomainActivationId: pulumi.Output.create<String>(map['multicastDomainActivationId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      trafficSpec: map['trafficSpec'] == null ? null : pulumi.Output.create<MulticastDomainActivationTrafficSpec>(MulticastDomainActivationTrafficSpec.fromMap((map['trafficSpec'] as Map).cast<String, dynamic>())),
    );
  }
}


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
    this.description,
    this.disablePlacementPolicy,
    this.labels,
    required this.location,
    required this.multicastDomain,
    required this.multicastDomainActivationId,
    this.project,
    this.trafficSpec,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disablePlacementPolicy: (() { final guardedValue = map['disablePlacementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      multicastDomain: pulumi.Input.fromValue(map['multicastDomain'] as String),
      multicastDomainActivationId: pulumi.Input.fromValue(map['multicastDomainActivationId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficSpec: (() { final guardedValue = map['trafficSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MulticastDomainActivationTrafficSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


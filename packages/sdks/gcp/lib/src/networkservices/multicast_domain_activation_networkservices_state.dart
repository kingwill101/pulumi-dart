// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_activation_state.dart';
import 'multicast_domain_activation_traffic_spec.dart';

/// Input properties used for looking up and filtering MulticastDomainActivation resources.
class MulticastDomainActivationNetworkservicesState {
  /// The URL of the admin network.
  final pulumi.Input<String>? adminNetwork;

  /// The timestamp when the multicast domain activation was
  /// created.
  final pulumi.Input<String>? createTime;

  /// An optional text description of the multicast domain activation.
  final pulumi.Input<String>? description;

  /// Option to allow disabling placement policy for multicast infrastructure.
  /// Only applicable if the activation is for a domain associating with a
  /// multicast domain group.
  final pulumi.Input<bool>? disablePlacementPolicy;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;

  /// The resource name of the multicast domain to activate.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  final pulumi.Input<String>? multicastDomain;

  /// A unique name for the multicast domain activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String>? multicastDomainActivationId;

  /// Identifier. The resource name of the multicast domain activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  final pulumi.Input<List<MulticastDomainActivationState>>? states;

  /// Specifies the traffic volume and multicast group scale parameters that are
  /// used to set up multicast infrastructure for a multicast domain in a zone.
  /// Structure is documented below.
  final pulumi.Input<MulticastDomainActivationTrafficSpec>? trafficSpec;

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast domain activation resources. If a domain
  /// activation is deleted and another with the same name is created, the new
  /// domain activation is assigned a different unique_id.
  final pulumi.Input<String>? uniqueId;

  /// The timestamp when the multicast domain activation was most
  /// recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticastDomainActivationNetworkservicesState].
  /// [adminNetwork] The URL of the admin network.
  /// [createTime] The timestamp when the multicast domain activation was
  /// [description] An optional text description of the multicast domain activation.
  /// [disablePlacementPolicy] Option to allow disabling placement policy for multicast infrastructure.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastDomain] The resource name of the multicast domain to activate.
  /// [multicastDomainActivationId] A unique name for the multicast domain activation.
  /// [name] Identifier. The resource name of the multicast domain activation.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [states] (Output)
  /// [trafficSpec] Specifies the traffic volume and multicast group scale parameters that are
  /// [uniqueId] The Google-generated UUID for the resource. This value is
  /// [updateTime] The timestamp when the multicast domain activation was most
  MulticastDomainActivationNetworkservicesState({
    this.adminNetwork,
    this.createTime,
    this.description,
    this.disablePlacementPolicy,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.multicastDomain,
    this.multicastDomainActivationId,
    this.name,
    this.project,
    this.pulumiLabels,
    this.states,
    this.trafficSpec,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNetwork': ?adminNetwork,
      'createTime': ?createTime,
      'description': ?description,
      'disablePlacementPolicy': ?disablePlacementPolicy,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'multicastDomain': ?multicastDomain,
      'multicastDomainActivationId': ?multicastDomainActivationId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'states':
          ?pulumi.Input.mapOptionalInputValue<
            List<MulticastDomainActivationState>,
            List<Map<String, dynamic>>
          >(
            states,
            (value) =>
                pulumi.Input.encodeList<
                  MulticastDomainActivationState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'trafficSpec':
          ?pulumi.Input.mapOptionalInputValue<
            MulticastDomainActivationTrafficSpec,
            Map<String, dynamic>
          >(trafficSpec, (value) => value.toMap()),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory MulticastDomainActivationNetworkservicesState.fromMap(
    Map<String, dynamic> map,
  ) {
    return MulticastDomainActivationNetworkservicesState(
      adminNetwork: (() {
        final guardedValue = map['adminNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disablePlacementPolicy: (() {
        final guardedValue = map['disablePlacementPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multicastDomain: (() {
        final guardedValue = map['multicastDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multicastDomainActivationId: (() {
        final guardedValue = map['multicastDomainActivationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      states: (() {
        final guardedValue = map['states'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MulticastDomainActivationState>(
            guardedValue,
            (value) => MulticastDomainActivationState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      trafficSpec: (() {
        final guardedValue = map['trafficSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MulticastDomainActivationTrafficSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uniqueId: (() {
        final guardedValue = map['uniqueId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

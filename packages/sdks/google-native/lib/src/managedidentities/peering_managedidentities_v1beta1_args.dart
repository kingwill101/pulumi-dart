// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_peering_managedidentities_v1beta1_args_doc}
/// The set of arguments for Peering.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_peering_managedidentities_v1beta1_args_doc}
class PeeringManagedidentitiesV1beta1Args {
  /// The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final pulumi.Input<String> authorizedNetwork;
  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  final pulumi.Input<String> domainResource;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  /// Required. Peering Id, unique name to identify peering.
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [PeeringManagedidentitiesV1beta1Args].
  /// [authorizedNetwork] The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  /// [domainResource] Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [peeringId] Required. Peering Id, unique name to identify peering.
  /// [project] Optional.
  PeeringManagedidentitiesV1beta1Args({
    required this.authorizedNetwork,
    required this.domainResource,
    this.labels,
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': authorizedNetwork,
      'domainResource': domainResource,
      'labels': ?labels,
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory PeeringManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return PeeringManagedidentitiesV1beta1Args(
      authorizedNetwork: pulumi.Input.fromValue(map['authorizedNetwork'] as String),
      domainResource: pulumi.Input.fromValue(map['domainResource'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      peeringId: pulumi.Input.fromValue(map['peeringId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


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
    required pulumi.Output<String> authorizedNetwork,
    required pulumi.Output<String> domainResource,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> peeringId,
    pulumi.Output<String>? project,
  }) :
      authorizedNetwork = pulumi.Input.asInput<String>(authorizedNetwork),
      domainResource = pulumi.Input.asInput<String>(domainResource),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      peeringId = pulumi.Input.asInput<String>(peeringId),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      authorizedNetwork: pulumi.Output.create<String>(map['authorizedNetwork'] as String),
      domainResource: pulumi.Output.create<String>(map['domainResource'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      peeringId: pulumi.Output.create<String>(map['peeringId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


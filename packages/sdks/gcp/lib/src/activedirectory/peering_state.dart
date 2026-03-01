// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Peering resources.
class PeeringState {
  /// The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final pulumi.Input<String>? authorizedNetwork;
  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  final pulumi.Input<String>? domainResource;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Unique name of the peering in this scope including projects and location using the form: projects/{projectId}/locations/global/peerings/{peeringId}.
  final pulumi.Input<String>? name;
  /// (Required)
  final pulumi.Input<String>? peeringId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of this Peering.
  final pulumi.Input<String>? status;
  /// Additional information about the current status of this peering, if available.
  final pulumi.Input<String>? statusMessage;

  /// Creates a new [PeeringState].
  /// [authorizedNetwork] The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  /// [domainResource] Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels that can contain user-provided metadata
  /// [name] Unique name of the peering in this scope including projects and location using the form: projects/{projectId}/locations/global/peerings/{peeringId}.
  /// [peeringId] (Required)
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [status] The current state of this Peering.
  /// [statusMessage] Additional information about the current status of this peering, if available.
  PeeringState({
    pulumi.Output<String>? authorizedNetwork,
    pulumi.Output<String>? domainResource,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peeringId,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
  }) :
      authorizedNetwork = pulumi.Input.asOptionalInput<String>(authorizedNetwork),
      domainResource = pulumi.Input.asOptionalInput<String>(domainResource),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      peeringId = pulumi.Input.asOptionalInput<String>(peeringId),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': ?authorizedNetwork,
      'domainResource': ?domainResource,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'peeringId': ?peeringId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory PeeringState.fromMap(Map<String, dynamic> map) {
    return PeeringState(
      authorizedNetwork: map['authorizedNetwork'] == null ? null : pulumi.Output.create<String>(map['authorizedNetwork'] as String),
      domainResource: map['domainResource'] == null ? null : pulumi.Output.create<String>(map['domainResource'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peeringId: map['peeringId'] == null ? null : pulumi.Output.create<String>(map['peeringId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
    );
  }
}


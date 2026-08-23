// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferencesDedicatedInference {
  /// The date and time when the dedicated inference endpoint was created.
  final pulumi.Input<String> createdAt;
  /// The unique ID of the dedicated inference endpoint.
  final pulumi.Input<String> id;
  /// The name of the dedicated inference endpoint.
  final pulumi.Input<String> name;
  /// The fully-qualified domain name of the private endpoint.
  final pulumi.Input<String> privateEndpointFqdn;
  /// The list of provider model IDs for the dedicated inference endpoint.
  final pulumi.Input<List<String>> providerModelIds;
  /// The fully-qualified domain name of the public endpoint, if enabled.
  final pulumi.Input<String> publicEndpointFqdn;
  /// The region where the dedicated inference endpoint is deployed.
  final pulumi.Input<String> region;
  /// The current status of the dedicated inference endpoint.
  final pulumi.Input<String> status;
  /// The date and time when the dedicated inference endpoint was last updated.
  final pulumi.Input<String> updatedAt;
  /// The UUID of the VPC the dedicated inference endpoint is deployed in.
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [GetDedicatedInferencesDedicatedInference].
  /// [createdAt] The date and time when the dedicated inference endpoint was created.
  /// [id] The unique ID of the dedicated inference endpoint.
  /// [name] The name of the dedicated inference endpoint.
  /// [privateEndpointFqdn] The fully-qualified domain name of the private endpoint.
  /// [providerModelIds] The list of provider model IDs for the dedicated inference endpoint.
  /// [publicEndpointFqdn] The fully-qualified domain name of the public endpoint, if enabled.
  /// [region] The region where the dedicated inference endpoint is deployed.
  /// [status] The current status of the dedicated inference endpoint.
  /// [updatedAt] The date and time when the dedicated inference endpoint was last updated.
  /// [vpcUuid] The UUID of the VPC the dedicated inference endpoint is deployed in.
  const GetDedicatedInferencesDedicatedInference({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.privateEndpointFqdn,
    required this.providerModelIds,
    required this.publicEndpointFqdn,
    required this.region,
    required this.status,
    required this.updatedAt,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'privateEndpointFqdn': privateEndpointFqdn,
      'providerModelIds': providerModelIds,
      'publicEndpointFqdn': publicEndpointFqdn,
      'region': region,
      'status': status,
      'updatedAt': updatedAt,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetDedicatedInferencesDedicatedInference.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferencesDedicatedInference(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpointFqdn: pulumi.Input.fromValue(map['privateEndpointFqdn'] as String),
      providerModelIds: pulumi.Input.fromValue((map['providerModelIds'] as List).cast<String>()),
      publicEndpointFqdn: pulumi.Input.fromValue(map['publicEndpointFqdn'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}

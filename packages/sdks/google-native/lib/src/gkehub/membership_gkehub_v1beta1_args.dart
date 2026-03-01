// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_gkehub_v1beta1.dart';
import 'membership_endpoint_gkehub_v1beta1.dart';
import 'membership_infrastructure_type_gkehub_v1beta1.dart';
import 'monitoring_config_gkehub_v1beta1.dart';

/// {@template pulumi_gkehub_v1beta1_membership_gkehub_v1beta1_args_doc}
/// The set of arguments for Membership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta1_membership_gkehub_v1beta1_args_doc}
class MembershipGkehubV1beta1Args {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  final pulumi.Input<AuthorityGkehubV1beta1>? authority;
  /// Optional. Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*`
  final pulumi.Input<String>? description;
  /// Optional. Endpoint information to reach this member.
  final pulumi.Input<MembershipEndpointGkehubV1beta1>? endpoint;
  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  final pulumi.Input<String>? externalId;
  /// Optional. The infrastructure type this Membership is running on.
  final pulumi.Input<MembershipInfrastructureTypeGkehubV1beta1>? infrastructureType;
  /// Optional. GCP labels for this membership.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> membershipId;
  /// Optional. The monitoring config information for this membership.
  final pulumi.Input<MonitoringConfigGkehubV1beta1>? monitoringConfig;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [MembershipGkehubV1beta1Args].
  /// [authority] Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// [description] Optional. Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*`
  /// [endpoint] Optional. Endpoint information to reach this member.
  /// [externalId] Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  /// [infrastructureType] Optional. The infrastructure type this Membership is running on.
  /// [labels] Optional. GCP labels for this membership.
  /// [location] Optional.
  /// [membershipId] Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  /// [monitoringConfig] Optional. The monitoring config information for this membership.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  MembershipGkehubV1beta1Args({
    pulumi.Output<AuthorityGkehubV1beta1>? authority,
    pulumi.Output<String>? description,
    pulumi.Output<MembershipEndpointGkehubV1beta1>? endpoint,
    pulumi.Output<String>? externalId,
    pulumi.Output<MembershipInfrastructureTypeGkehubV1beta1>? infrastructureType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> membershipId,
    pulumi.Output<MonitoringConfigGkehubV1beta1>? monitoringConfig,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
  }) :
      authority = pulumi.Input.asOptionalInput<AuthorityGkehubV1beta1>(authority),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoint = pulumi.Input.asOptionalInput<MembershipEndpointGkehubV1beta1>(endpoint),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      infrastructureType = pulumi.Input.asOptionalInput<MembershipInfrastructureTypeGkehubV1beta1>(infrastructureType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      monitoringConfig = pulumi.Input.asOptionalInput<MonitoringConfigGkehubV1beta1>(monitoringConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?pulumi.Input.mapOptionalInputValue<AuthorityGkehubV1beta1, Map<String, dynamic>>(authority, (value) => value.toMap()),
      'description': ?description,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<MembershipEndpointGkehubV1beta1, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'externalId': ?externalId,
      'infrastructureType': ?pulumi.Input.mapOptionalInputValue<MembershipInfrastructureTypeGkehubV1beta1, String>(infrastructureType, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'membershipId': membershipId,
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringConfigGkehubV1beta1, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory MembershipGkehubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MembershipGkehubV1beta1Args(
      authority: map['authority'] == null ? null : pulumi.Output.create<AuthorityGkehubV1beta1>(AuthorityGkehubV1beta1.fromMap((map['authority'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<MembershipEndpointGkehubV1beta1>(MembershipEndpointGkehubV1beta1.fromMap((map['endpoint'] as Map).cast<String, dynamic>())),
      externalId: map['externalId'] == null ? null : pulumi.Output.create<String>(map['externalId'] as String),
      infrastructureType: map['infrastructureType'] == null ? null : pulumi.Output.create<MembershipInfrastructureTypeGkehubV1beta1>(MembershipInfrastructureTypeGkehubV1beta1.fromValue(map['infrastructureType'] as String)),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
      monitoringConfig: map['monitoringConfig'] == null ? null : pulumi.Output.create<MonitoringConfigGkehubV1beta1>(MonitoringConfigGkehubV1beta1.fromMap((map['monitoringConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
    );
  }
}


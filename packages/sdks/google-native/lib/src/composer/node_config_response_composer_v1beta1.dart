// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipallocation_policy_response_composer_v1beta1.dart';

/// The configuration information for the Kubernetes Engine nodes running the Apache Airflow software.
class NodeConfigResponseComposerV1beta1 {
  /// Optional. The disk size in GB used for node VMs. Minimum size is 30GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int> diskSizeGb;
  /// Optional. Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent
  final pulumi.Input<bool> enableIpMasqAgent;
  /// Optional. The IPAllocationPolicy fields for the GKE cluster.
  final pulumi.Input<IPAllocationPolicyResponseComposerV1beta1> ipAllocationPolicy;
  /// Optional. The Compute Engine [zone](/compute/docs/regions-zones) in which to deploy the VMs used to run the Apache Airflow software, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/zones/{zoneId}". This `location` must belong to the enclosing environment's project and location. If both this field and `nodeConfig.machineType` are specified, `nodeConfig.machineType` must belong to this `location`; if both are unspecified, the service will pick a zone in the Compute Engine region corresponding to the Cloud Composer location, and propagate that choice to both fields. If only one field (`location` or `nodeConfig.machineType`) is specified, the location information from the specified field will be propagated to the unspecified field. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String> location;
  /// Optional. The Compute Engine [machine type](/compute/docs/machine-types) used for cluster instances, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/zones/{zoneId}/machineTypes/{machineTypeId}". The `machineType` must belong to the enclosing environment's project and location. If both this field and `nodeConfig.location` are specified, this `machineType` must belong to the `nodeConfig.location`; if both are unspecified, the service will pick a zone in the Compute Engine region corresponding to the Cloud Composer location, and propagate that choice to both fields. If exactly one of this field and `nodeConfig.location` is specified, the location information from the specified field will be propagated to the unspecified field. The `machineTypeId` must not be a [shared-core machine type](/compute/docs/machine-types#sharedcore). If this field is unspecified, the `machineTypeId` defaults to "n1-standard-1". This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String> machineType;
  /// Optional. The maximum number of pods per node in the Cloud Composer GKE cluster. The value must be between 8 and 110 and it can be set only if the environment is VPC-native. The default value is 32. Values of this field will be propagated both to the `default-pool` node pool of the newly created GKE cluster, and to the default "Maximum Pods per Node" value which is used for newly created node pools if their value is not explicitly set during node pool creation. For more information, see [Optimizing IP address allocation] (https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr). Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int> maxPodsPerNode;
  /// Optional. The Compute Engine network to be used for machine communications, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/global/networks/{networkId}". If unspecified, the default network in the environment's project is used. If a [Custom Subnet Network](/vpc/docs/vpc#vpc_networks_and_subnets) is provided, `nodeConfig.subnetwork` must also be provided. For [Shared VPC](/vpc/docs/shared-vpc) subnetwork requirements, see `nodeConfig.subnetwork`.
  final pulumi.Input<String> network;
  /// Optional. The set of Google API scopes to be made available on all node VMs. If `oauth_scopes` is empty, defaults to ["https://www.googleapis.com/auth/cloud-platform"]. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<List<String>> oauthScopes;
  /// Optional. The Google Cloud Platform Service Account to be used by the workloads. If a service account is not specified, the "default" Compute Engine service account is used. Cannot be updated.
  final pulumi.Input<String> serviceAccount;
  /// Optional. The Compute Engine subnetwork to be used for machine communications, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/regions/{regionId}/subnetworks/{subnetworkId}" If a subnetwork is provided, `nodeConfig.network` must also be provided, and the subnetwork must belong to the enclosing environment's project and location.
  final pulumi.Input<String> subnetwork;
  /// Optional. The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Cannot be updated.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [NodeConfigResponseComposerV1beta1].
  /// [diskSizeGb] Optional. The disk size in GB used for node VMs. Minimum size is 30GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enableIpMasqAgent] Optional. Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent
  /// [ipAllocationPolicy] Optional. The IPAllocationPolicy fields for the GKE cluster.
  /// [location] Optional. The Compute Engine [zone](/compute/docs/regions-zones) in which to deploy the VMs used to run the Apache Airflow software, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/zones/{zoneId}". This `location` must belong to the enclosing environment's project and location. If both this field and `nodeConfig.machineType` are specified, `nodeConfig.machineType` must belong to this `location`; if both are unspecified, the service will pick a zone in the Compute Engine region corresponding to the Cloud Composer location, and propagate that choice to both fields. If only one field (`location` or `nodeConfig.machineType`) is specified, the location information from the specified field will be propagated to the unspecified field. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [machineType] Optional. The Compute Engine [machine type](/compute/docs/machine-types) used for cluster instances, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/zones/{zoneId}/machineTypes/{machineTypeId}". The `machineType` must belong to the enclosing environment's project and location. If both this field and `nodeConfig.location` are specified, this `machineType` must belong to the `nodeConfig.location`; if both are unspecified, the service will pick a zone in the Compute Engine region corresponding to the Cloud Composer location, and propagate that choice to both fields. If exactly one of this field and `nodeConfig.location` is specified, the location information from the specified field will be propagated to the unspecified field. The `machineTypeId` must not be a [shared-core machine type](/compute/docs/machine-types#sharedcore). If this field is unspecified, the `machineTypeId` defaults to "n1-standard-1". This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [maxPodsPerNode] Optional. The maximum number of pods per node in the Cloud Composer GKE cluster. The value must be between 8 and 110 and it can be set only if the environment is VPC-native. The default value is 32. Values of this field will be propagated both to the `default-pool` node pool of the newly created GKE cluster, and to the default "Maximum Pods per Node" value which is used for newly created node pools if their value is not explicitly set during node pool creation. For more information, see [Optimizing IP address allocation] (https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr). Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [network] Optional. The Compute Engine network to be used for machine communications, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/global/networks/{networkId}". If unspecified, the default network in the environment's project is used. If a [Custom Subnet Network](/vpc/docs/vpc#vpc_networks_and_subnets) is provided, `nodeConfig.subnetwork` must also be provided. For [Shared VPC](/vpc/docs/shared-vpc) subnetwork requirements, see `nodeConfig.subnetwork`.
  /// [oauthScopes] Optional. The set of Google API scopes to be made available on all node VMs. If `oauth_scopes` is empty, defaults to ["https://www.googleapis.com/auth/cloud-platform"]. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [serviceAccount] Optional. The Google Cloud Platform Service Account to be used by the workloads. If a service account is not specified, the "default" Compute Engine service account is used. Cannot be updated.
  /// [subnetwork] Optional. The Compute Engine subnetwork to be used for machine communications, specified as a [relative resource name](/apis/design/resource_names#relative_resource_name). For example: "projects/{projectId}/regions/{regionId}/subnetworks/{subnetworkId}" If a subnetwork is provided, `nodeConfig.network` must also be provided, and the subnetwork must belong to the enclosing environment's project and location.
  /// [tags] Optional. The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Cannot be updated.
  const NodeConfigResponseComposerV1beta1({
    required this.diskSizeGb,
    required this.enableIpMasqAgent,
    required this.ipAllocationPolicy,
    required this.location,
    required this.machineType,
    required this.maxPodsPerNode,
    required this.network,
    required this.oauthScopes,
    required this.serviceAccount,
    required this.subnetwork,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'enableIpMasqAgent': enableIpMasqAgent,
      'ipAllocationPolicy': pulumi.Input.mapInputValue<IPAllocationPolicyResponseComposerV1beta1, Map<String, dynamic>>(ipAllocationPolicy, (value) => value.toMap()),
      'location': location,
      'machineType': machineType,
      'maxPodsPerNode': maxPodsPerNode,
      'network': network,
      'oauthScopes': oauthScopes,
      'serviceAccount': serviceAccount,
      'subnetwork': subnetwork,
      'tags': tags,
    };
  }

  factory NodeConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponseComposerV1beta1(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      enableIpMasqAgent: pulumi.Input.fromValue(map['enableIpMasqAgent'] as bool),
      ipAllocationPolicy: pulumi.Input.fromValue(IPAllocationPolicyResponseComposerV1beta1.fromMap((map['ipAllocationPolicy']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as int),
      network: pulumi.Input.fromValue(map['network'] as String),
      oauthScopes: pulumi.Input.fromValue((map['oauthScopes'] as List).cast<String>()),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}

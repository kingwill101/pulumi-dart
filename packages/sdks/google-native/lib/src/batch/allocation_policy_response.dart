// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_policy_or_template_response.dart';
import 'location_policy_response.dart';
import 'network_policy_response.dart';
import 'placement_policy_response.dart';
import 'service_account_response.dart';

/// A Job's resource allocation policy describes when, where, and how compute resources should be allocated for the Job.
class AllocationPolicyResponse {
  /// Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now.
  final pulumi.Input<List<InstancePolicyOrTemplateResponse>> instances;
  /// Labels applied to all VM instances and other resources created by AllocationPolicy. Labels could be user provided or system generated. You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final pulumi.Input<Map<String, String>> labels;
  /// Location where compute resources should be allocated for the Job.
  final pulumi.Input<LocationPolicyResponse> location;
  /// The network policy. If you define an instance template in the InstancePolicyOrTemplate field, Batch will use the network settings in the instance template instead of this field.
  final pulumi.Input<NetworkPolicyResponse> network;
  /// The placement policy.
  final pulumi.Input<PlacementPolicyResponse> placement;
  /// Service account that VMs will run as.
  final pulumi.Input<ServiceAccountResponse> serviceAccount;

  /// Creates a new [AllocationPolicyResponse].
  /// [instances] Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now.
  /// [labels] Labels applied to all VM instances and other resources created by AllocationPolicy. Labels could be user provided or system generated. You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  /// [location] Location where compute resources should be allocated for the Job.
  /// [network] The network policy. If you define an instance template in the InstancePolicyOrTemplate field, Batch will use the network settings in the instance template instead of this field.
  /// [placement] The placement policy.
  /// [serviceAccount] Service account that VMs will run as.
  const AllocationPolicyResponse({
    required this.instances,
    required this.labels,
    required this.location,
    required this.network,
    required this.placement,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': pulumi.Input.mapInputValue<List<InstancePolicyOrTemplateResponse>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<InstancePolicyOrTemplateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': labels,
      'location': pulumi.Input.mapInputValue<LocationPolicyResponse, Map<String, dynamic>>(location, (value) => value.toMap()),
      'network': pulumi.Input.mapInputValue<NetworkPolicyResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'placement': pulumi.Input.mapInputValue<PlacementPolicyResponse, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'serviceAccount': pulumi.Input.mapInputValue<ServiceAccountResponse, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
    };
  }

  factory AllocationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AllocationPolicyResponse(
      instances: pulumi.Input.fromValue(pulumi.Input.decodeList<InstancePolicyOrTemplateResponse>(map['instances']!, (value) => InstancePolicyOrTemplateResponse.fromMap((value as Map).cast<String, dynamic>()))),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(LocationPolicyResponse.fromMap((map['location']! as Map).cast<String, dynamic>())),
      network: pulumi.Input.fromValue(NetworkPolicyResponse.fromMap((map['network']! as Map).cast<String, dynamic>())),
      placement: pulumi.Input.fromValue(PlacementPolicyResponse.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(ServiceAccountResponse.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())),
    );
  }
}

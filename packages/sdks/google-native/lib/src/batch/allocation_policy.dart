// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_policy_or_template.dart';
import 'location_policy.dart';
import 'network_policy.dart';
import 'placement_policy.dart';
import 'service_account.dart';

/// A Job's resource allocation policy describes when, where, and how compute resources should be allocated for the Job.
class AllocationPolicy {
  /// Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now.
  final pulumi.Input<List<InstancePolicyOrTemplate>>? instances;

  /// Labels applied to all VM instances and other resources created by AllocationPolicy. Labels could be user provided or system generated. You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location where compute resources should be allocated for the Job.
  final pulumi.Input<LocationPolicy>? location;

  /// The network policy. If you define an instance template in the InstancePolicyOrTemplate field, Batch will use the network settings in the instance template instead of this field.
  final pulumi.Input<NetworkPolicy>? network;

  /// The placement policy.
  final pulumi.Input<PlacementPolicy>? placement;

  /// Service account that VMs will run as.
  final pulumi.Input<ServiceAccount>? serviceAccount;

  /// Creates a new [AllocationPolicy].
  /// [instances] Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now.
  /// [labels] Labels applied to all VM instances and other resources created by AllocationPolicy. Labels could be user provided or system generated. You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  /// [location] Location where compute resources should be allocated for the Job.
  /// [network] The network policy. If you define an instance template in the InstancePolicyOrTemplate field, Batch will use the network settings in the instance template instead of this field.
  /// [placement] The placement policy.
  /// [serviceAccount] Service account that VMs will run as.
  AllocationPolicy({
    this.instances,
    this.labels,
    this.location,
    this.network,
    this.placement,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstancePolicyOrTemplate>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  InstancePolicyOrTemplate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'labels': ?labels,
      'location':
          ?pulumi.Input.mapOptionalInputValue<
            LocationPolicy,
            Map<String, dynamic>
          >(location, (value) => value.toMap()),
      'network':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkPolicy,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'placement':
          ?pulumi.Input.mapOptionalInputValue<
            PlacementPolicy,
            Map<String, dynamic>
          >(placement, (value) => value.toMap()),
      'serviceAccount':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAccount,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
    };
  }

  factory AllocationPolicy.fromMap(Map<String, dynamic> map) {
    return AllocationPolicy(
      instances: (() {
        final guardedValue = map['instances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstancePolicyOrTemplate>(
            guardedValue,
            (value) => InstancePolicyOrTemplate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
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
        return pulumi.Input.fromValue(
          LocationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      placement: (() {
        final guardedValue = map['placement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlacementPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}

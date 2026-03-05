import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_lb_policy_args.dart';
import 'service_lb_policy_auto_capacity_drain_response.dart';
import 'service_lb_policy_failover_config_response.dart';

/// Creates a new ServiceLbPolicy in a given project and location.
class ServiceLbPolicy extends pulumi.CustomResource {
  /// Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  late final pulumi.Output<ServiceLbPolicyAutoCapacityDrainResponse>
  autoCapacityDrain;

  /// The timestamp when this resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;

  /// Optional. Configuration related to health based failover.
  late final pulumi.Output<ServiceLbPolicyFailoverConfigResponse>
  failoverConfig;

  /// Optional. Set of label tags associated with the ServiceLbPolicy resource.
  late final pulumi.Output<Map<String, String>> labels;

  /// Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  late final pulumi.Output<String> loadBalancingAlgorithm;
  late final pulumi.Output<String> location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. Short name of the ServiceLbPolicy resource to be created. E.g. for resource name `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`. the id is value of {service_lb_policy_name}
  late final pulumi.Output<String> serviceLbPolicyId;

  /// The timestamp when this resource was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceLbPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLbPolicy]. {@macro pulumi_networkservices_v1beta1_service_lb_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLbPolicy(
    String name, {
    ServiceLbPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networkservices/v1beta1:ServiceLbPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCapacityDrain =
        registerOutput<ServiceLbPolicyAutoCapacityDrainResponse>(
          'autoCapacityDrain',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ServiceLbPolicyAutoCapacityDrainResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    failoverConfig = registerOutput<ServiceLbPolicyFailoverConfigResponse>(
      'failoverConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServiceLbPolicyFailoverConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    loadBalancingAlgorithm = registerOutput<String>('loadBalancingAlgorithm');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceLbPolicyId = registerOutput<String>('serviceLbPolicyId');
    updateTime = registerOutput<String>('updateTime');
  }
}

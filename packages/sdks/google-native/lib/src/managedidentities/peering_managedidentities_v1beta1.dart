import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_managedidentities_v1beta1_args.dart';

/// Creates a Peering for Managed AD instance.
/// Auto-naming is currently not supported for this resource.
class PeeringManagedidentitiesV1beta1 extends pulumi.CustomResource {
  /// The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  late final pulumi.Output<String> authorizedNetwork;

  /// The time the instance was created.
  late final pulumi.Output<String> createTime;

  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  late final pulumi.Output<String> domainResource;

  /// Optional. Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;

  /// Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.
  late final pulumi.Output<String> name;

  /// Required. Peering Id, unique name to identify peering.
  late final pulumi.Output<String> peeringId;
  late final pulumi.Output<String> project;

  /// The current state of this Peering.
  late final pulumi.Output<String> state;

  /// Additional information about the current status of this peering, if available.
  late final pulumi.Output<String> statusMessage;

  /// Last update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PeeringManagedidentitiesV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeeringManagedidentitiesV1beta1]. {@macro pulumi_managedidentities_v1beta1_peering_managedidentities_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeeringManagedidentitiesV1beta1(
    String name, {
    PeeringManagedidentitiesV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:managedidentities/v1beta1:Peering',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizedNetwork = registerOutput<String>('authorizedNetwork');
    createTime = registerOutput<String>('createTime');
    domainResource = registerOutput<String>('domainResource');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    peeringId = registerOutput<String>('peeringId');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    updateTime = registerOutput<String>('updateTime');
  }
}

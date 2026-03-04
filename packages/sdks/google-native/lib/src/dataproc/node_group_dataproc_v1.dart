import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_config_response.dart';
import 'node_group_args.dart';

/// Creates a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class NodeGroupDataprocV1 extends pulumi.CustomResource {
  late final pulumi.Output<String> clusterId;

  /// Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  late final pulumi.Output<Map<String, String>> labels;

  /// The Node group resource name (https://aip.dev/122).
  late final pulumi.Output<String> name;

  /// Optional. The node group instance group configuration.
  late final pulumi.Output<InstanceGroupConfigResponse> nodeGroupConfig;

  /// Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  late final pulumi.Output<String?> nodeGroupId;

  /// Optional. operation id of the parent operation sending the create request
  late final pulumi.Output<String?> parentOperationId;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> regionId;

  /// Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// Node group roles.
  late final pulumi.Output<List<String>> roles;

  /// Creates a new [NodeGroupDataprocV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroupDataprocV1]. {@macro pulumi_dataproc_v1_node_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroupDataprocV1(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataproc/v1:NodeGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    nodeGroupConfig = registerOutput<InstanceGroupConfigResponse>(
      'nodeGroupConfig',
    );
    nodeGroupId = registerOutput<String?>('nodeGroupId');
    parentOperationId = registerOutput<String?>('parentOperationId');
    project = registerOutput<String>('project');
    regionId = registerOutput<String>('regionId');
    requestId = registerOutput<String?>('requestId');
    roles = registerOutput<List<String>>('roles');
  }
}

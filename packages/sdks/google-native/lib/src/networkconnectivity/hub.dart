import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_args.dart';
import 'spoke_summary_response.dart';

/// Creates a new Network Connectivity Center hub in the specified project.
/// Auto-naming is currently not supported for this resource.
class Hub extends pulumi.CustomResource {
  /// The time the hub was created.
  late final pulumi.Output<String> createTime;

  /// An optional description of the hub.
  late final pulumi.Output<String> description;

  /// Required. A unique identifier for the hub.
  late final pulumi.Output<String> hubId;

  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  late final pulumi.Output<Map<String, String>> labels;

  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The route tables that belong to this hub. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}` This field is read-only. Network Connectivity Center automatically populates it based on the route tables nested under the hub.
  late final pulumi.Output<List<String>> routeTables;

  /// The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  late final pulumi.Output<List<Map<String, dynamic>>> routingVpcs;

  /// A summary of the spokes associated with a hub. The summary includes a count of spokes according to type and according to state. If any spokes are inactive, the summary also lists the reasons they are inactive, including a count for each reason.
  late final pulumi.Output<SpokeSummaryResponse> spokeSummary;

  /// The current lifecycle state of this hub.
  late final pulumi.Output<String> state;

  /// The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// The time the hub was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Hub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hub]. {@macro pulumi_networkconnectivity_v1_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hub(String name, {HubArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:networkconnectivity/v1:Hub',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    hubId = registerOutput<String>('hubId');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    routeTables = registerOutput<List<String>>('routeTables');
    routingVpcs = registerOutput<List<Map<String, dynamic>>>('routingVpcs');
    spokeSummary = registerOutput<SpokeSummaryResponse>(
      'spokeSummary',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SpokeSummaryResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String>('state');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}

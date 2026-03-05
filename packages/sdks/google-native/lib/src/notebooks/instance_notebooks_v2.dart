import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_setup_response.dart';
import 'instance_notebooks_v2_args.dart';

/// Creates a new Instance in a given project and location.
/// Auto-naming is currently not supported for this resource.
class InstanceNotebooksV2 extends pulumi.CustomResource {
  /// Instance creation time.
  late final pulumi.Output<String> createTime;
  /// Email address of entity that sent original CreateInstance request.
  late final pulumi.Output<String> creator;
  /// Optional. If true, the notebook instance will not register with the proxy.
  late final pulumi.Output<bool> disableProxyAccess;
  /// Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  late final pulumi.Output<GceSetupResponse> gceSetup;
  /// Additional information about instance health. Example: healthInfo": { "docker_proxy_agent_status": "1", "docker_status": "1", "jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated": "2020-10-18 09:40:03.573409" }
  late final pulumi.Output<Map<String, String>> healthInfo;
  /// Instance health_state.
  late final pulumi.Output<String> healthState;
  /// Required. User-defined unique ID of this instance.
  late final pulumi.Output<String> instanceId;
  /// Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  late final pulumi.Output<List<String>> instanceOwners;
  /// Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The proxy endpoint that is used to access the Jupyter notebook.
  late final pulumi.Output<String> proxyUri;
  /// Optional. Idempotent request UUID.
  late final pulumi.Output<String?> requestId;
  /// The state of this instance.
  late final pulumi.Output<String> state;
  /// Instance update time.
  late final pulumi.Output<String> updateTime;
  /// The upgrade history of this instance.
  late final pulumi.Output<List<Map<String, dynamic>>> upgradeHistory;

  /// Creates a new [InstanceNotebooksV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceNotebooksV2]. {@macro pulumi_notebooks_v2_instance_notebooks_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceNotebooksV2(
    String name, {
    InstanceNotebooksV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v2:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    disableProxyAccess = registerOutput<bool>('disableProxyAccess');
    gceSetup = registerOutput<GceSetupResponse>('gceSetup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GceSetupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthInfo = registerOutput<Map<String, String>>('healthInfo');
    healthState = registerOutput<String>('healthState');
    instanceId = registerOutput<String>('instanceId');
    instanceOwners = registerOutput<List<String>>('instanceOwners');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyUri = registerOutput<String>('proxyUri');
    requestId = registerOutput<String?>('requestId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    upgradeHistory = registerOutput<List<Map<String, dynamic>>>('upgradeHistory');
  }
}

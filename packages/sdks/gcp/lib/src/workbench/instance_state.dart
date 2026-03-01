// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_gce_setup.dart';
import 'instance_upgrade_history.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  final pulumi.Input<String>? createTime;
  /// Output only. Email address of entity that sent original CreateInstance request.
  final pulumi.Input<String>? creator;
  /// Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final pulumi.Input<String>? desiredState;
  /// Optional. If true, the workbench instance will not register with the proxy.
  final pulumi.Input<bool>? disableProxyAccess;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Flag to enable managed end user credentials for the instance.
  final pulumi.Input<bool>? enableManagedEuc;
  /// Flag that specifies that a notebook can be accessed with third party
  /// identity provider.
  final pulumi.Input<bool>? enableThirdPartyIdentity;
  /// The definition of how to configure a VM instance outside of Resources and Identity.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetup>? gceSetup;
  /// 'Output only. Additional information about instance health. Example:
  /// healthInfo": { "docker_proxy_agent_status": "1", "docker_status": "1", "jupyterlab_api_status":
  /// "-1", "jupyterlab_status": "-1", "updated": "2020-10-18 09:40:03.573409" }'
  final pulumi.Input<List<Map<String, dynamic>>>? healthInfos;
  /// Output only. Instance health_state.
  final pulumi.Input<String>? healthState;
  /// Required. User-defined unique ID of this instance.
  final pulumi.Input<String>? instanceId;
  /// 'Optional. Input only. The owner of this instance after creation. Format:
  /// `alias@example.com` Currently supports one owner only. If not specified, all of
  /// the service account users of your VM instance''s service account can use the instance.
  /// If specified, sets the access mode to `Single user`. For more details, see
  /// https://cloud.google.com/vertex-ai/docs/workbench/instances/manage-access-jupyterlab'
  final pulumi.Input<List<String>>? instanceOwners;
  /// Optional. Labels to apply to this instance. These can be later modified
  /// by the UpdateInstance method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String>? location;
  /// The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. The proxy endpoint that is used to access the Jupyter notebook.
  final pulumi.Input<String>? proxyUri;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// (Output)
  /// Output only. The state of this instance upgrade history entry.
  final pulumi.Input<String>? state;
  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  final pulumi.Input<String>? updateTime;
  /// Output only. The upgrade history of this instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceUpgradeHistory>>? upgradeHistories;

  /// Creates a new [InstanceState].
  /// [createTime] An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// [creator] Output only. Email address of entity that sent original CreateInstance request.
  /// [desiredState] Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  /// [disableProxyAccess] Optional. If true, the workbench instance will not register with the proxy.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableManagedEuc] Flag to enable managed end user credentials for the instance.
  /// [enableThirdPartyIdentity] Flag that specifies that a notebook can be accessed with third party
  /// [gceSetup] The definition of how to configure a VM instance outside of Resources and Identity.
  /// [healthInfos] 'Output only. Additional information about instance health. Example:
  /// [healthState] Output only. Instance health_state.
  /// [instanceId] Required. User-defined unique ID of this instance.
  /// [instanceOwners] 'Optional. Input only. The owner of this instance after creation. Format:
  /// [labels] Optional. Labels to apply to this instance. These can be later modified
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyUri] Output only. The proxy endpoint that is used to access the Jupyter notebook.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] (Output)
  /// [updateTime] An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// [upgradeHistories] Output only. The upgrade history of this instance.
  InstanceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creator,
    pulumi.Output<String>? desiredState,
    pulumi.Output<bool>? disableProxyAccess,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enableManagedEuc,
    pulumi.Output<bool>? enableThirdPartyIdentity,
    pulumi.Output<InstanceGceSetup>? gceSetup,
    pulumi.Output<List<Map<String, dynamic>>>? healthInfos,
    pulumi.Output<String>? healthState,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<String>>? instanceOwners,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? proxyUri,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
    pulumi.Output<List<InstanceUpgradeHistory>>? upgradeHistories,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creator = pulumi.Input.asOptionalInput<String>(creator),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      disableProxyAccess = pulumi.Input.asOptionalInput<bool>(disableProxyAccess),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enableManagedEuc = pulumi.Input.asOptionalInput<bool>(enableManagedEuc),
      enableThirdPartyIdentity = pulumi.Input.asOptionalInput<bool>(enableThirdPartyIdentity),
      gceSetup = pulumi.Input.asOptionalInput<InstanceGceSetup>(gceSetup),
      healthInfos = pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(healthInfos),
      healthState = pulumi.Input.asOptionalInput<String>(healthState),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceOwners = pulumi.Input.asOptionalInput<List<String>>(instanceOwners),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyUri = pulumi.Input.asOptionalInput<String>(proxyUri),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      upgradeHistories = pulumi.Input.asOptionalInput<List<InstanceUpgradeHistory>>(upgradeHistories);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creator': ?creator,
      'desiredState': ?desiredState,
      'disableProxyAccess': ?disableProxyAccess,
      'effectiveLabels': ?effectiveLabels,
      'enableManagedEuc': ?enableManagedEuc,
      'enableThirdPartyIdentity': ?enableThirdPartyIdentity,
      'gceSetup': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetup, Map<String, dynamic>>(gceSetup, (value) => value.toMap()),
      'healthInfos': ?healthInfos,
      'healthState': ?healthState,
      'instanceId': ?instanceId,
      'instanceOwners': ?instanceOwners,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'proxyUri': ?proxyUri,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
      'upgradeHistories': ?pulumi.Input.mapOptionalInputValue<List<InstanceUpgradeHistory>, List<Map<String, dynamic>>>(upgradeHistories, (value) => pulumi.Input.encodeList<InstanceUpgradeHistory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creator: map['creator'] == null ? null : pulumi.Output.create<String>(map['creator'] as String),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      disableProxyAccess: map['disableProxyAccess'] == null ? null : pulumi.Output.create<bool>(map['disableProxyAccess'] as bool),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enableManagedEuc: map['enableManagedEuc'] == null ? null : pulumi.Output.create<bool>(map['enableManagedEuc'] as bool),
      enableThirdPartyIdentity: map['enableThirdPartyIdentity'] == null ? null : pulumi.Output.create<bool>(map['enableThirdPartyIdentity'] as bool),
      gceSetup: map['gceSetup'] == null ? null : pulumi.Output.create<InstanceGceSetup>(InstanceGceSetup.fromMap((map['gceSetup'] as Map).cast<String, dynamic>())),
      healthInfos: map['healthInfos'] == null ? null : pulumi.Output.create<List<Map<String, dynamic>>>((map['healthInfos'] as List).cast<Map<String, dynamic>>()),
      healthState: map['healthState'] == null ? null : pulumi.Output.create<String>(map['healthState'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceOwners: map['instanceOwners'] == null ? null : pulumi.Output.create<List<String>>((map['instanceOwners'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyUri: map['proxyUri'] == null ? null : pulumi.Output.create<String>(map['proxyUri'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      upgradeHistories: map['upgradeHistories'] == null ? null : pulumi.Output.create<List<InstanceUpgradeHistory>>(pulumi.Input.decodeList<InstanceUpgradeHistory>(map['upgradeHistories'], (value) => InstanceUpgradeHistory.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


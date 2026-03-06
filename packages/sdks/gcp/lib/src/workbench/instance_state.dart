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
  const InstanceState({
    this.createTime,
    this.creator,
    this.desiredState,
    this.disableProxyAccess,
    this.effectiveLabels,
    this.enableManagedEuc,
    this.enableThirdPartyIdentity,
    this.gceSetup,
    this.healthInfos,
    this.healthState,
    this.instanceId,
    this.instanceOwners,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.proxyUri,
    this.pulumiLabels,
    this.state,
    this.updateTime,
    this.upgradeHistories,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableProxyAccess: (() { final guardedValue = map['disableProxyAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableManagedEuc: (() { final guardedValue = map['enableManagedEuc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableThirdPartyIdentity: (() { final guardedValue = map['enableThirdPartyIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gceSetup: (() { final guardedValue = map['gceSetup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthInfos: (() { final guardedValue = map['healthInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
      healthState: (() { final guardedValue = map['healthState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceOwners: (() { final guardedValue = map['instanceOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyUri: (() { final guardedValue = map['proxyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeHistories: (() { final guardedValue = map['upgradeHistories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceUpgradeHistory>(guardedValue, (value) => InstanceUpgradeHistory.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


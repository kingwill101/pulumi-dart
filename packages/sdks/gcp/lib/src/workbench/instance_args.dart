// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_gce_setup.dart';

/// {@template pulumi_workbench_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_workbench_instance_instance_args_doc}
class InstanceArgs {
  /// Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final pulumi.Input<String>? desiredState;
  /// Optional. If true, the workbench instance will not register with the proxy.
  final pulumi.Input<bool>? disableProxyAccess;
  /// Flag to enable managed end user credentials for the instance.
  final pulumi.Input<bool>? enableManagedEuc;
  /// Flag that specifies that a notebook can be accessed with third party
  /// identity provider.
  final pulumi.Input<bool>? enableThirdPartyIdentity;
  /// The definition of how to configure a VM instance outside of Resources and Identity.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetup>? gceSetup;
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
  final pulumi.Input<String> location;
  /// The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [desiredState] Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  /// [disableProxyAccess] Optional. If true, the workbench instance will not register with the proxy.
  /// [enableManagedEuc] Flag to enable managed end user credentials for the instance.
  /// [enableThirdPartyIdentity] Flag that specifies that a notebook can be accessed with third party
  /// [gceSetup] The definition of how to configure a VM instance outside of Resources and Identity.
  /// [instanceId] Required. User-defined unique ID of this instance.
  /// [instanceOwners] 'Optional. Input only. The owner of this instance after creation. Format:
  /// [labels] Optional. Labels to apply to this instance. These can be later modified
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// [project] The ID of the project in which the resource belongs.
  InstanceArgs({
    pulumi.Output<String>? desiredState,
    pulumi.Output<bool>? disableProxyAccess,
    pulumi.Output<bool>? enableManagedEuc,
    pulumi.Output<bool>? enableThirdPartyIdentity,
    pulumi.Output<InstanceGceSetup>? gceSetup,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<String>>? instanceOwners,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      disableProxyAccess = pulumi.Input.asOptionalInput<bool>(disableProxyAccess),
      enableManagedEuc = pulumi.Input.asOptionalInput<bool>(enableManagedEuc),
      enableThirdPartyIdentity = pulumi.Input.asOptionalInput<bool>(enableThirdPartyIdentity),
      gceSetup = pulumi.Input.asOptionalInput<InstanceGceSetup>(gceSetup),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceOwners = pulumi.Input.asOptionalInput<List<String>>(instanceOwners),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': ?desiredState,
      'disableProxyAccess': ?disableProxyAccess,
      'enableManagedEuc': ?enableManagedEuc,
      'enableThirdPartyIdentity': ?enableThirdPartyIdentity,
      'gceSetup': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetup, Map<String, dynamic>>(gceSetup, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'instanceOwners': ?instanceOwners,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      disableProxyAccess: map['disableProxyAccess'] == null ? null : pulumi.Output.create<bool>(map['disableProxyAccess'] as bool),
      enableManagedEuc: map['enableManagedEuc'] == null ? null : pulumi.Output.create<bool>(map['enableManagedEuc'] as bool),
      enableThirdPartyIdentity: map['enableThirdPartyIdentity'] == null ? null : pulumi.Output.create<bool>(map['enableThirdPartyIdentity'] as bool),
      gceSetup: map['gceSetup'] == null ? null : pulumi.Output.create<InstanceGceSetup>(InstanceGceSetup.fromMap((map['gceSetup'] as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceOwners: map['instanceOwners'] == null ? null : pulumi.Output.create<List<String>>((map['instanceOwners'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


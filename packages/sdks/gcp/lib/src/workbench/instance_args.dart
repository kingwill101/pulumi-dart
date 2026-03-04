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
    this.desiredState,
    this.disableProxyAccess,
    this.enableManagedEuc,
    this.enableThirdPartyIdentity,
    this.gceSetup,
    this.instanceId,
    this.instanceOwners,
    this.labels,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': ?desiredState,
      'disableProxyAccess': ?disableProxyAccess,
      'enableManagedEuc': ?enableManagedEuc,
      'enableThirdPartyIdentity': ?enableThirdPartyIdentity,
      'gceSetup':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGceSetup,
            Map<String, dynamic>
          >(gceSetup, (value) => value.toMap()),
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
      desiredState: (() {
        final guardedValue = map['desiredState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableProxyAccess: (() {
        final guardedValue = map['disableProxyAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableManagedEuc: (() {
        final guardedValue = map['enableManagedEuc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableThirdPartyIdentity: (() {
        final guardedValue = map['enableThirdPartyIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gceSetup: (() {
        final guardedValue = map['gceSetup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceGceSetup.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceOwners: (() {
        final guardedValue = map['instanceOwners'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

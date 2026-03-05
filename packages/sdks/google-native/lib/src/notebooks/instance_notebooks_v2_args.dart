// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_setup.dart';

/// {@template pulumi_notebooks_v2_instance_notebooks_v2_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v2_instance_notebooks_v2_args_doc}
class InstanceNotebooksV2Args {
  /// Optional. If true, the notebook instance will not register with the proxy.
  final pulumi.Input<bool>? disableProxyAccess;
  /// Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  final pulumi.Input<GceSetup>? gceSetup;
  /// Required. User-defined unique ID of this instance.
  final pulumi.Input<String> instanceId;
  /// Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final pulumi.Input<List<String>>? instanceOwners;
  /// Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. Idempotent request UUID.
  final pulumi.Input<String>? requestId;

  /// Creates a new [InstanceNotebooksV2Args].
  /// [disableProxyAccess] Optional. If true, the notebook instance will not register with the proxy.
  /// [gceSetup] Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  /// [instanceId] Required. User-defined unique ID of this instance.
  /// [instanceOwners] Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  /// [labels] Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. Idempotent request UUID.
  InstanceNotebooksV2Args({
    this.disableProxyAccess,
    this.gceSetup,
    required this.instanceId,
    this.instanceOwners,
    this.labels,
    this.location,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableProxyAccess': ?disableProxyAccess,
      'gceSetup': ?pulumi.Input.mapOptionalInputValue<GceSetup, Map<String, dynamic>>(gceSetup, (value) => value.toMap()),
      'instanceId': instanceId,
      'instanceOwners': ?instanceOwners,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory InstanceNotebooksV2Args.fromMap(Map<String, dynamic> map) {
    return InstanceNotebooksV2Args(
      disableProxyAccess: (() { final guardedValue = map['disableProxyAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gceSetup: (() { final guardedValue = map['gceSetup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GceSetup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceOwners: (() { final guardedValue = map['instanceOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


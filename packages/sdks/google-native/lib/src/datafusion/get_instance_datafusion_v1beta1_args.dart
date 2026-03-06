// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafusion_v1beta1_get_instance_datafusion_v1beta1_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_datafusion_v1beta1_get_instance_datafusion_v1beta1_args_doc}
class GetInstanceDatafusionV1beta1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceDatafusionV1beta1Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetInstanceDatafusionV1beta1Args({
    required this.instanceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInstanceDatafusionV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceDatafusionV1beta1Args(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


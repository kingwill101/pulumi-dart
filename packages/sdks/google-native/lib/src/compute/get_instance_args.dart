// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceArgs].
  /// [instance] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [zone] Required.
  GetInstanceArgs({
    required pulumi.Output<String> instance,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
    required pulumi.Output<String> zone,
  }) :
      instance = pulumi.Input.asInput<String>(instance),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'view': ?view,
      'zone': zone,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instance: pulumi.Output.create<String>(map['instance'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}


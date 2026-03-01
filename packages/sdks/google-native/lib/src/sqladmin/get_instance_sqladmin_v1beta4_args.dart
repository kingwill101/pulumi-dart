// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1beta4_get_instance_sqladmin_v1beta4_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_get_instance_sqladmin_v1beta4_args_doc}
class GetInstanceSqladminV1beta4Args {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceSqladminV1beta4Args].
  /// [instance] Required.
  /// [project] Optional.
  GetInstanceSqladminV1beta4Args({
    required pulumi.Output<String> instance,
    pulumi.Output<String>? project,
  }) :
      instance = pulumi.Input.asInput<String>(instance),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetInstanceSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceSqladminV1beta4Args(
      instance: pulumi.Output.create<String>(map['instance'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


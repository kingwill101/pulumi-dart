// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_alpha_get_composite_type_args_doc}
/// Arguments for getCompositeType.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_alpha_get_composite_type_args_doc}
class GetCompositeTypeArgs {
  final pulumi.Input<String> compositeType;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCompositeTypeArgs].
  /// [compositeType] Required.
  /// [project] Optional.
  GetCompositeTypeArgs({
    required pulumi.Output<String> compositeType,
    pulumi.Output<String>? project,
  }) :
      compositeType = pulumi.Input.asInput<String>(compositeType),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeType': compositeType,
      'project': ?project,
    };
  }

  factory GetCompositeTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetCompositeTypeArgs(
      compositeType: pulumi.Output.create<String>(map['compositeType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


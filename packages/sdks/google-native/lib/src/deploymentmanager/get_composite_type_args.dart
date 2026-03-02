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
    required this.compositeType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeType': compositeType,
      'project': ?project,
    };
  }

  factory GetCompositeTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetCompositeTypeArgs(
      compositeType: (map['compositeType'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


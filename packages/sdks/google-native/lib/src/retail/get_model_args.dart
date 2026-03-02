// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2_get_model_args_doc}
/// Arguments for getModel.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_get_model_args_doc}
class GetModelArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [modelId] Required.
  /// [project] Optional.
  GetModelArgs({
    required this.catalogId,
    required this.location,
    required this.modelId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'modelId': modelId,
      'project': ?project,
    };
  }

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      catalogId: (map['catalogId'] as String).input(),
      location: (map['location'] as String).input(),
      modelId: (map['modelId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


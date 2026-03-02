// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_index_aiplatform_v1beta1_args_doc}
/// Arguments for getIndex.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_index_aiplatform_v1beta1_args_doc}
class GetIndexAiplatformV1beta1Args {
  final pulumi.Input<String> indexId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexAiplatformV1beta1Args].
  /// [indexId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIndexAiplatformV1beta1Args({
    required this.indexId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexId': indexId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIndexAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexAiplatformV1beta1Args(
      indexId: (map['indexId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


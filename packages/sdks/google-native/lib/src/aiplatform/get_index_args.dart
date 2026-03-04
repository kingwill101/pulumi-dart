// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_index_args_doc}
/// Arguments for getIndex.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_index_args_doc}
class GetIndexArgs {
  final pulumi.Input<String> indexId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexArgs].
  /// [indexId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIndexArgs({required this.indexId, required this.location, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexId': indexId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetIndexArgs(
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

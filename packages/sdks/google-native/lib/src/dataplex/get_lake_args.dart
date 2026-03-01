// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_args_doc}
/// Arguments for getLake.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_args_doc}
class GetLakeArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetLakeArgs({
    required pulumi.Output<String> lakeId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetLakeArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeArgs(
      lakeId: pulumi.Output.create<String>(map['lakeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


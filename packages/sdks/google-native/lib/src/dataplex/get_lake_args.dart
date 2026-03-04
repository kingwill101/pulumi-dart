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
  GetLakeArgs({required this.lakeId, required this.location, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetLakeArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeArgs(
      lakeId: pulumi.Input.fromValue(map['lakeId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

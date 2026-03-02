// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalineage_v1_get_process_args_doc}
/// Arguments for getProcess.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_get_process_args_doc}
class GetProcessArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProcessArgs].
  /// [location] Required.
  /// [processId] Required.
  /// [project] Optional.
  GetProcessArgs({
    required this.location,
    required this.processId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'processId': processId,
      'project': ?project,
    };
  }

  factory GetProcessArgs.fromMap(Map<String, dynamic> map) {
    return GetProcessArgs(
      location: (map['location'] as String).input(),
      processId: (map['processId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


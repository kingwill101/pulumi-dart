// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_toolresults_v1beta3_get_history_args_doc}
/// Arguments for getHistory.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_get_history_args_doc}
class GetHistoryArgs {
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHistoryArgs].
  /// [historyId] Required.
  /// [project] Optional.
  GetHistoryArgs({
    required this.historyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historyId': historyId,
      'project': ?project,
    };
  }

  factory GetHistoryArgs.fromMap(Map<String, dynamic> map) {
    return GetHistoryArgs(
      historyId: (map['historyId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


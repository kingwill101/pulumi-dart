// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_qa_scorecard_revision_qa_scorecard_revision_args_doc}
/// The set of arguments for QaScorecardRevision.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_qa_scorecard_revision_qa_scorecard_revision_args_doc}
class QaScorecardRevisionArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> qaScorecard;
  /// A unique ID for the new QaScorecardRevision. This ID will become the final
  /// component of the QaScorecardRevision's resource name.
  /// If no ID is specified this resource will get the latest revision on the given scorecard.
  final pulumi.Input<String?>? qaScorecardRevisionId;

  /// Creates a new [QaScorecardRevisionArgs].
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [qaScorecard] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [qaScorecardRevisionId] A unique ID for the new QaScorecardRevision. This ID will become the final
  const QaScorecardRevisionArgs({
    required this.location,
    this.project,
    required this.qaScorecard,
    this.qaScorecardRevisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'qaScorecard': qaScorecard,
      'qaScorecardRevisionId': ?qaScorecardRevisionId,
    };
  }

  factory QaScorecardRevisionArgs.fromMap(Map<String, dynamic> map) {
    return QaScorecardRevisionArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qaScorecard: pulumi.Input.fromValue(map['qaScorecard'] as String),
      qaScorecardRevisionId: (() { final guardedValue = map['qaScorecardRevisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

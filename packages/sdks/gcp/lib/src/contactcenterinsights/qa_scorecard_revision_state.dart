// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qa_scorecard_revision_snapshot.dart';

/// Input properties used for looking up and filtering QaScorecardRevision resources.
class QaScorecardRevisionState {
  /// Alternative IDs for this revision of the scorecard, e.g., `latest`.
  final pulumi.Input<List<String>>? alternateIds;
  /// (Output)
  /// The time at which this scorecard was created.
  final pulumi.Input<String>? createTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// (Output)
  /// Identifier. The scorecard name.
  /// Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? qaScorecard;
  /// A unique ID for the new QaScorecardRevision. This ID will become the final
  /// component of the QaScorecardRevision's resource name.
  /// If no ID is specified this resource will get the latest revision on the given scorecard.
  final pulumi.Input<String>? qaScorecardRevisionId;
  /// A QaScorecard represents a collection of questions to be scored during
  /// analysis.
  /// Structure is documented below.
  final pulumi.Input<List<QaScorecardRevisionSnapshot>>? snapshots;
  /// State of the scorecard revision, indicating whether it's ready to
  /// be used in analysis.
  /// Possible values:
  /// EDITABLE
  /// TRAINING
  /// TRAINING_FAILED
  /// READY
  /// DELETING
  /// TRAINING_CANCELLED
  final pulumi.Input<String>? state;

  /// Creates a new [QaScorecardRevisionState].
  /// [alternateIds] Alternative IDs for this revision of the scorecard, e.g., `latest`.
  /// [createTime] (Output)
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] (Output)
  /// [project] The ID of the project in which the resource belongs.
  /// [qaScorecard] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [qaScorecardRevisionId] A unique ID for the new QaScorecardRevision. This ID will become the final
  /// [snapshots] A QaScorecard represents a collection of questions to be scored during
  /// [state] State of the scorecard revision, indicating whether it's ready to
  const QaScorecardRevisionState({
    this.alternateIds,
    this.createTime,
    this.location,
    this.name,
    this.project,
    this.qaScorecard,
    this.qaScorecardRevisionId,
    this.snapshots,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateIds': ?alternateIds,
      'createTime': ?createTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'qaScorecard': ?qaScorecard,
      'qaScorecardRevisionId': ?qaScorecardRevisionId,
      'snapshots': ?pulumi.Input.mapOptionalInputValue<List<QaScorecardRevisionSnapshot>, List<Map<String, dynamic>>>(snapshots, (value) => pulumi.Input.encodeList<QaScorecardRevisionSnapshot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory QaScorecardRevisionState.fromMap(Map<String, dynamic> map) {
    return QaScorecardRevisionState(
      alternateIds: (() { final guardedValue = map['alternateIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qaScorecard: (() { final guardedValue = map['qaScorecard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qaScorecardRevisionId: (() { final guardedValue = map['qaScorecardRevisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QaScorecardRevisionSnapshot>(guardedValue, (value) => QaScorecardRevisionSnapshot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommended_action_error_info_response.dart';
import 'recommended_action_impact_record_response.dart';
import 'recommended_action_implementation_info_response.dart';
import 'recommended_action_metric_info_response.dart';
import 'recommended_action_state_info_response.dart';

/// Database, Server or Elastic Pool Recommended Action.
class RecommendedActionResponse {
  /// Gets additional details specific to this recommended action.
  final pulumi.Input<Map<String, String>> details;
  /// Gets the error details if and why this recommended action is put to error state.
  final pulumi.Input<RecommendedActionErrorInfoResponse> errorDetails;
  /// Gets the estimated impact info for this recommended action e.g., Estimated CPU gain, Estimated Disk Space change
  final pulumi.Input<List<RecommendedActionImpactRecordResponse>> estimatedImpact;
  /// Gets the time taken for applying this recommended action on user resource. e.g., time taken for index creation
  final pulumi.Input<String> executeActionDuration;
  /// Gets if approval for applying this recommended action was given by user/system.
  final pulumi.Input<String> executeActionInitiatedBy;
  /// Gets the time when this recommended action was approved for execution.
  final pulumi.Input<String> executeActionInitiatedTime;
  /// Gets the time when system started applying this recommended action on the user resource. e.g., index creation start time
  final pulumi.Input<String> executeActionStartTime;
  /// Resource ID.
  final pulumi.Input<String> id;
  /// Gets the implementation details of this recommended action for user to apply it manually.
  final pulumi.Input<RecommendedActionImplementationInfoResponse> implementationDetails;
  /// Gets if this recommended action was suggested some time ago but user chose to ignore this and system added a new recommended action again.
  final pulumi.Input<bool> isArchivedAction;
  /// Gets if this recommended action is actionable by user
  final pulumi.Input<bool> isExecutableAction;
  /// Gets if changes applied by this recommended action can be reverted by user
  final pulumi.Input<bool> isRevertableAction;
  /// Resource kind.
  final pulumi.Input<String> kind;
  /// Gets time when this recommended action was last refreshed.
  final pulumi.Input<String> lastRefresh;
  /// Gets the linked objects, if any.
  final pulumi.Input<List<String>> linkedObjects;
  /// Resource location.
  final pulumi.Input<String> location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Gets the observed/actual impact info for this recommended action e.g., Actual CPU gain, Actual Disk Space change
  final pulumi.Input<List<RecommendedActionImpactRecordResponse>> observedImpact;
  /// Gets the reason for recommending this action. e.g., DuplicateIndex
  final pulumi.Input<String> recommendationReason;
  /// Gets the time taken for reverting changes of this recommended action on user resource. e.g., time taken for dropping the created index.
  final pulumi.Input<String> revertActionDuration;
  /// Gets if approval for reverting this recommended action was given by user/system.
  final pulumi.Input<String> revertActionInitiatedBy;
  /// Gets the time when this recommended action was approved for revert.
  final pulumi.Input<String> revertActionInitiatedTime;
  /// Gets the time when system started reverting changes of this recommended action on user resource. e.g., time when index drop is executed.
  final pulumi.Input<String> revertActionStartTime;
  /// Gets the impact of this recommended action. Possible values are 1 - Low impact, 2 - Medium Impact and 3 - High Impact
  final pulumi.Input<int> score;
  /// Gets the info of the current state the recommended action is in.
  final pulumi.Input<RecommendedActionStateInfoResponse> state;
  /// Gets the time series info of metrics for this recommended action e.g., CPU consumption time series
  final pulumi.Input<List<RecommendedActionMetricInfoResponse>> timeSeries;
  /// Resource type.
  final pulumi.Input<String> type;
  /// Gets the time since when this recommended action is valid.
  final pulumi.Input<String> validSince;

  /// Creates a new [RecommendedActionResponse].
  /// [details] Gets additional details specific to this recommended action.
  /// [errorDetails] Gets the error details if and why this recommended action is put to error state.
  /// [estimatedImpact] Gets the estimated impact info for this recommended action e.g., Estimated CPU gain, Estimated Disk Space change
  /// [executeActionDuration] Gets the time taken for applying this recommended action on user resource. e.g., time taken for index creation
  /// [executeActionInitiatedBy] Gets if approval for applying this recommended action was given by user/system.
  /// [executeActionInitiatedTime] Gets the time when this recommended action was approved for execution.
  /// [executeActionStartTime] Gets the time when system started applying this recommended action on the user resource. e.g., index creation start time
  /// [id] Resource ID.
  /// [implementationDetails] Gets the implementation details of this recommended action for user to apply it manually.
  /// [isArchivedAction] Gets if this recommended action was suggested some time ago but user chose to ignore this and system added a new recommended action again.
  /// [isExecutableAction] Gets if this recommended action is actionable by user
  /// [isRevertableAction] Gets if changes applied by this recommended action can be reverted by user
  /// [kind] Resource kind.
  /// [lastRefresh] Gets time when this recommended action was last refreshed.
  /// [linkedObjects] Gets the linked objects, if any.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [observedImpact] Gets the observed/actual impact info for this recommended action e.g., Actual CPU gain, Actual Disk Space change
  /// [recommendationReason] Gets the reason for recommending this action. e.g., DuplicateIndex
  /// [revertActionDuration] Gets the time taken for reverting changes of this recommended action on user resource. e.g., time taken for dropping the created index.
  /// [revertActionInitiatedBy] Gets if approval for reverting this recommended action was given by user/system.
  /// [revertActionInitiatedTime] Gets the time when this recommended action was approved for revert.
  /// [revertActionStartTime] Gets the time when system started reverting changes of this recommended action on user resource. e.g., time when index drop is executed.
  /// [score] Gets the impact of this recommended action. Possible values are 1 - Low impact, 2 - Medium Impact and 3 - High Impact
  /// [state] Gets the info of the current state the recommended action is in.
  /// [timeSeries] Gets the time series info of metrics for this recommended action e.g., CPU consumption time series
  /// [type] Resource type.
  /// [validSince] Gets the time since when this recommended action is valid.
  const RecommendedActionResponse({
    required this.details,
    required this.errorDetails,
    required this.estimatedImpact,
    required this.executeActionDuration,
    required this.executeActionInitiatedBy,
    required this.executeActionInitiatedTime,
    required this.executeActionStartTime,
    required this.id,
    required this.implementationDetails,
    required this.isArchivedAction,
    required this.isExecutableAction,
    required this.isRevertableAction,
    required this.kind,
    required this.lastRefresh,
    required this.linkedObjects,
    required this.location,
    required this.name,
    required this.observedImpact,
    required this.recommendationReason,
    required this.revertActionDuration,
    required this.revertActionInitiatedBy,
    required this.revertActionInitiatedTime,
    required this.revertActionStartTime,
    required this.score,
    required this.state,
    required this.timeSeries,
    required this.type,
    required this.validSince,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'errorDetails': pulumi.Input.mapInputValue<RecommendedActionErrorInfoResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'estimatedImpact': pulumi.Input.mapInputValue<List<RecommendedActionImpactRecordResponse>, List<Map<String, dynamic>>>(estimatedImpact, (value) => pulumi.Input.encodeList<RecommendedActionImpactRecordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executeActionDuration': executeActionDuration,
      'executeActionInitiatedBy': executeActionInitiatedBy,
      'executeActionInitiatedTime': executeActionInitiatedTime,
      'executeActionStartTime': executeActionStartTime,
      'id': id,
      'implementationDetails': pulumi.Input.mapInputValue<RecommendedActionImplementationInfoResponse, Map<String, dynamic>>(implementationDetails, (value) => value.toMap()),
      'isArchivedAction': isArchivedAction,
      'isExecutableAction': isExecutableAction,
      'isRevertableAction': isRevertableAction,
      'kind': kind,
      'lastRefresh': lastRefresh,
      'linkedObjects': linkedObjects,
      'location': location,
      'name': name,
      'observedImpact': pulumi.Input.mapInputValue<List<RecommendedActionImpactRecordResponse>, List<Map<String, dynamic>>>(observedImpact, (value) => pulumi.Input.encodeList<RecommendedActionImpactRecordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recommendationReason': recommendationReason,
      'revertActionDuration': revertActionDuration,
      'revertActionInitiatedBy': revertActionInitiatedBy,
      'revertActionInitiatedTime': revertActionInitiatedTime,
      'revertActionStartTime': revertActionStartTime,
      'score': score,
      'state': pulumi.Input.mapInputValue<RecommendedActionStateInfoResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
      'timeSeries': pulumi.Input.mapInputValue<List<RecommendedActionMetricInfoResponse>, List<Map<String, dynamic>>>(timeSeries, (value) => pulumi.Input.encodeList<RecommendedActionMetricInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'validSince': validSince,
    };
  }

  factory RecommendedActionResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionResponse(
      details: pulumi.Input.fromValue((map['details'] as Map).cast<String, String>()),
      errorDetails: pulumi.Input.fromValue(RecommendedActionErrorInfoResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      estimatedImpact: pulumi.Input.fromValue(pulumi.Input.decodeList<RecommendedActionImpactRecordResponse>(map['estimatedImpact']!, (value) => RecommendedActionImpactRecordResponse.fromMap((value as Map).cast<String, dynamic>()))),
      executeActionDuration: pulumi.Input.fromValue(map['executeActionDuration'] as String),
      executeActionInitiatedBy: pulumi.Input.fromValue(map['executeActionInitiatedBy'] as String),
      executeActionInitiatedTime: pulumi.Input.fromValue(map['executeActionInitiatedTime'] as String),
      executeActionStartTime: pulumi.Input.fromValue(map['executeActionStartTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      implementationDetails: pulumi.Input.fromValue(RecommendedActionImplementationInfoResponse.fromMap((map['implementationDetails']! as Map).cast<String, dynamic>())),
      isArchivedAction: pulumi.Input.fromValue(map['isArchivedAction'] as bool),
      isExecutableAction: pulumi.Input.fromValue(map['isExecutableAction'] as bool),
      isRevertableAction: pulumi.Input.fromValue(map['isRevertableAction'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      lastRefresh: pulumi.Input.fromValue(map['lastRefresh'] as String),
      linkedObjects: pulumi.Input.fromValue((map['linkedObjects'] as List).cast<String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      observedImpact: pulumi.Input.fromValue(pulumi.Input.decodeList<RecommendedActionImpactRecordResponse>(map['observedImpact']!, (value) => RecommendedActionImpactRecordResponse.fromMap((value as Map).cast<String, dynamic>()))),
      recommendationReason: pulumi.Input.fromValue(map['recommendationReason'] as String),
      revertActionDuration: pulumi.Input.fromValue(map['revertActionDuration'] as String),
      revertActionInitiatedBy: pulumi.Input.fromValue(map['revertActionInitiatedBy'] as String),
      revertActionInitiatedTime: pulumi.Input.fromValue(map['revertActionInitiatedTime'] as String),
      revertActionStartTime: pulumi.Input.fromValue(map['revertActionStartTime'] as String),
      score: pulumi.Input.fromValue(map['score'] as int),
      state: pulumi.Input.fromValue(RecommendedActionStateInfoResponse.fromMap((map['state']! as Map).cast<String, dynamic>())),
      timeSeries: pulumi.Input.fromValue(pulumi.Input.decodeList<RecommendedActionMetricInfoResponse>(map['timeSeries']!, (value) => RecommendedActionMetricInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      validSince: pulumi.Input.fromValue(map['validSince'] as String),
    );
  }
}


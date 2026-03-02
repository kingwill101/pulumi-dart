// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_boost_action.dart';
import 'control_condition.dart';
import 'control_filter_action.dart';
import 'control_promote_action.dart';
import 'control_redirect_action.dart';
import 'control_synonyms_action.dart';

/// {@template pulumi_discoveryengine_control_control_args_doc}
/// The set of arguments for Control.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_control_control_args_doc}
class ControlArgs {
  /// Changes the returned order of results.
  /// Structure is documented below.
  final pulumi.Input<ControlBoostAction>? boostAction;
  /// The collection ID. Currently only accepts "default_collection".
  final pulumi.Input<String>? collectionId;
  /// The conditions under which the control is active.
  /// Structure is documented below.
  final pulumi.Input<List<ControlCondition>>? conditions;
  /// The unique id of the control.
  final pulumi.Input<String> controlId;
  /// The display name of the control. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  final pulumi.Input<String> displayName;
  /// The engine to add the control to.
  final pulumi.Input<String> engineId;
  /// Removes entries from returned results.
  /// Structure is documented below.
  final pulumi.Input<ControlFilterAction>? filterAction;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Promotes a specified link for a query.
  /// Structure is documented below.
  final pulumi.Input<ControlPromoteAction>? promoteAction;
  /// Redirects to a specified URI.
  /// Structure is documented below.
  final pulumi.Input<ControlRedirectAction>? redirectAction;
  /// The solution type that the control belongs to.
  /// Possible values are: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  final pulumi.Input<String> solutionType;
  /// Associates queries with each other.
  /// Structure is documented below.
  final pulumi.Input<ControlSynonymsAction>? synonymsAction;
  /// The use cases that the control is used for.
  /// Each value may be one of: `SEARCH_USE_CASE_SEARCH`, `SEARCH_USE_CASE_BROWSE`.
  final pulumi.Input<List<String>>? useCases;

  /// Creates a new [ControlArgs].
  /// [boostAction] Changes the returned order of results.
  /// [collectionId] The collection ID. Currently only accepts "default_collection".
  /// [conditions] The conditions under which the control is active.
  /// [controlId] The unique id of the control.
  /// [displayName] The display name of the control. This field must be a UTF-8 encoded
  /// [engineId] The engine to add the control to.
  /// [filterAction] Removes entries from returned results.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [promoteAction] Promotes a specified link for a query.
  /// [redirectAction] Redirects to a specified URI.
  /// [solutionType] The solution type that the control belongs to.
  /// [synonymsAction] Associates queries with each other.
  /// [useCases] The use cases that the control is used for.
  ControlArgs({
    this.boostAction,
    this.collectionId,
    this.conditions,
    required this.controlId,
    required this.displayName,
    required this.engineId,
    this.filterAction,
    required this.location,
    this.project,
    this.promoteAction,
    this.redirectAction,
    required this.solutionType,
    this.synonymsAction,
    this.useCases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostAction': ?pulumi.Input.mapOptionalInputValue<ControlBoostAction, Map<String, dynamic>>(boostAction, (value) => value.toMap()),
      'collectionId': ?collectionId,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ControlCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ControlCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlId': controlId,
      'displayName': displayName,
      'engineId': engineId,
      'filterAction': ?pulumi.Input.mapOptionalInputValue<ControlFilterAction, Map<String, dynamic>>(filterAction, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'promoteAction': ?pulumi.Input.mapOptionalInputValue<ControlPromoteAction, Map<String, dynamic>>(promoteAction, (value) => value.toMap()),
      'redirectAction': ?pulumi.Input.mapOptionalInputValue<ControlRedirectAction, Map<String, dynamic>>(redirectAction, (value) => value.toMap()),
      'solutionType': solutionType,
      'synonymsAction': ?pulumi.Input.mapOptionalInputValue<ControlSynonymsAction, Map<String, dynamic>>(synonymsAction, (value) => value.toMap()),
      'useCases': ?useCases,
    };
  }

  factory ControlArgs.fromMap(Map<String, dynamic> map) {
    return ControlArgs(
      boostAction: map['boostAction'] == null ? null : (ControlBoostAction.fromMap((map['boostAction']! as Map).cast<String, dynamic>())).input(),
      collectionId: map['collectionId'] == null ? null : (map['collectionId']! as String).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ControlCondition>(map['conditions']!, (value) => ControlCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      controlId: (map['controlId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      engineId: (map['engineId'] as String).input(),
      filterAction: map['filterAction'] == null ? null : (ControlFilterAction.fromMap((map['filterAction']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      promoteAction: map['promoteAction'] == null ? null : (ControlPromoteAction.fromMap((map['promoteAction']! as Map).cast<String, dynamic>())).input(),
      redirectAction: map['redirectAction'] == null ? null : (ControlRedirectAction.fromMap((map['redirectAction']! as Map).cast<String, dynamic>())).input(),
      solutionType: (map['solutionType'] as String).input(),
      synonymsAction: map['synonymsAction'] == null ? null : (ControlSynonymsAction.fromMap((map['synonymsAction']! as Map).cast<String, dynamic>())).input(),
      useCases: map['useCases'] == null ? null : ((map['useCases']! as List).cast<String>()).input(),
    );
  }
}


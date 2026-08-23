// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden.dart';
import 'evaluation_scenario.dart';

/// Input properties used for looking up and filtering Evaluation resources.
class EvaluationState {
  /// (Required)
  final pulumi.Input<String>? app;
  /// Timestamp when the evaluation was created.
  final pulumi.Input<String>? createTime;
  /// The user who created the evaluation.
  final pulumi.Input<String>? createdBy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-defined description of the evaluation.
  final pulumi.Input<String>? description;
  /// User-defined display name of the evaluation.
  final pulumi.Input<String>? displayName;
  /// Etag used to ensure the object hasn't changed during a read-modify-write operation.
  final pulumi.Input<String>? etag;
  /// List of evaluation datasets the evaluation belongs to.
  final pulumi.Input<List<String>>? evaluationDatasets;
  /// The ID to use for the evaluation, which will become the final component of
  /// the evaluation's resource name. If not provided, a unique ID will be
  /// automatically assigned for the evaluation.
  final pulumi.Input<String>? evaluationId;
  /// The evaluation runs for this evaluation.
  final pulumi.Input<List<String>>? evaluationRuns;
  /// Golden input.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGolden>? golden;
  /// Whether the evaluation is invalid.
  final pulumi.Input<bool>? invalid;
  /// The user who last updated the evaluation.
  final pulumi.Input<String>? lastUpdatedBy;
  /// (Required)
  final pulumi.Input<String>? location;
  /// Identifier. The unique identifier of the evaluation.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/evaluations/{evaluation}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Scenario input.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenario>? scenario;
  /// User defined tags to categorize the evaluation.
  final pulumi.Input<List<String>>? tags;
  /// Timestamp when the evaluation was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EvaluationState].
  /// [app] (Required)
  /// [createTime] Timestamp when the evaluation was created.
  /// [createdBy] The user who created the evaluation.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-defined description of the evaluation.
  /// [displayName] User-defined display name of the evaluation.
  /// [etag] Etag used to ensure the object hasn't changed during a read-modify-write operation.
  /// [evaluationDatasets] List of evaluation datasets the evaluation belongs to.
  /// [evaluationId] The ID to use for the evaluation, which will become the final component of
  /// [evaluationRuns] The evaluation runs for this evaluation.
  /// [golden] Golden input.
  /// [invalid] Whether the evaluation is invalid.
  /// [lastUpdatedBy] The user who last updated the evaluation.
  /// [location] (Required)
  /// [name] Identifier. The unique identifier of the evaluation.
  /// [project] The ID of the project in which the resource belongs.
  /// [scenario] Scenario input.
  /// [tags] User defined tags to categorize the evaluation.
  /// [updateTime] Timestamp when the evaluation was last updated.
  const EvaluationState({
    this.app,
    this.createTime,
    this.createdBy,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.etag,
    this.evaluationDatasets,
    this.evaluationId,
    this.evaluationRuns,
    this.golden,
    this.invalid,
    this.lastUpdatedBy,
    this.location,
    this.name,
    this.project,
    this.scenario,
    this.tags,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'createTime': ?createTime,
      'createdBy': ?createdBy,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'evaluationDatasets': ?evaluationDatasets,
      'evaluationId': ?evaluationId,
      'evaluationRuns': ?evaluationRuns,
      'golden': ?pulumi.Input.mapOptionalInputValue<EvaluationGolden, Map<String, dynamic>>(golden, (value) => value.toMap()),
      'invalid': ?invalid,
      'lastUpdatedBy': ?lastUpdatedBy,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'scenario': ?pulumi.Input.mapOptionalInputValue<EvaluationScenario, Map<String, dynamic>>(scenario, (value) => value.toMap()),
      'tags': ?tags,
      'updateTime': ?updateTime,
    };
  }

  factory EvaluationState.fromMap(Map<String, dynamic> map) {
    return EvaluationState(
      app: (() { final guardedValue = map['app']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationDatasets: (() { final guardedValue = map['evaluationDatasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      evaluationId: (() { final guardedValue = map['evaluationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationRuns: (() { final guardedValue = map['evaluationRuns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      golden: (() { final guardedValue = map['golden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGolden.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      invalid: (() { final guardedValue = map['invalid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastUpdatedBy: (() { final guardedValue = map['lastUpdatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenario: (() { final guardedValue = map['scenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenario.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

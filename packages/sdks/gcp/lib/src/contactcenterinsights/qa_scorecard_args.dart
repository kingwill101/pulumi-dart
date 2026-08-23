// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_qa_scorecard_qa_scorecard_args_doc}
/// The set of arguments for QaScorecard.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_qa_scorecard_qa_scorecard_args_doc}
class QaScorecardArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A text description explaining the intent of the scorecard.
  final pulumi.Input<String>? description;
  /// The user-specified display name of the scorecard.
  final pulumi.Input<String>? displayName;
  /// Whether the scorecard is the default one for the project.
  /// A default scorecard cannot be deleted and will always appear first in
  /// scorecard selector.
  final pulumi.Input<bool>? isDefault;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A unique ID for the new QaScorecard. This ID will become the final
  /// component of the QaScorecard's resource name. If no ID is specified, a
  /// server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`.
  final pulumi.Input<String> qaScorecardId;
  /// Possible values:
  /// QA_SCORECARD_SOURCE_CUSTOMER_DEFINED
  /// QA_SCORECARD_SOURCE_DISCOVERY_ENGINE
  final pulumi.Input<String>? source;

  /// Creates a new [QaScorecardArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A text description explaining the intent of the scorecard.
  /// [displayName] The user-specified display name of the scorecard.
  /// [isDefault] Whether the scorecard is the default one for the project.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [qaScorecardId] A unique ID for the new QaScorecard. This ID will become the final
  /// [source] Possible values:
  const QaScorecardArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.isDefault,
    required this.location,
    this.project,
    required this.qaScorecardId,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'isDefault': ?isDefault,
      'location': location,
      'project': ?project,
      'qaScorecardId': qaScorecardId,
      'source': ?source,
    };
  }

  factory QaScorecardArgs.fromMap(Map<String, dynamic> map) {
    return QaScorecardArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qaScorecardId: pulumi.Input.fromValue(map['qaScorecardId'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

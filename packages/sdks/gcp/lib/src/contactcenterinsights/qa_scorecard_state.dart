// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QaScorecard resources.
class QaScorecardState {
  /// The time at which this scorecard was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A text description explaining the intent of the scorecard.
  final pulumi.Input<String?>? description;
  /// The user-specified display name of the scorecard.
  final pulumi.Input<String?>? displayName;
  /// Whether the scorecard is the default one for the project.
  /// A default scorecard cannot be deleted and will always appear first in
  /// scorecard selector.
  final pulumi.Input<bool?>? isDefault;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The scorecard name.
  /// Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A unique ID for the new QaScorecard. This ID will become the final
  /// component of the QaScorecard's resource name. If no ID is specified, a
  /// server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`.
  final pulumi.Input<String?>? qaScorecardId;
  /// Possible values:
  /// QA_SCORECARD_SOURCE_CUSTOMER_DEFINED
  /// QA_SCORECARD_SOURCE_DISCOVERY_ENGINE
  final pulumi.Input<String?>? source;
  /// The most recent time at which the scorecard was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [QaScorecardState].
  /// [createTime] The time at which this scorecard was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A text description explaining the intent of the scorecard.
  /// [displayName] The user-specified display name of the scorecard.
  /// [isDefault] Whether the scorecard is the default one for the project.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The scorecard name.
  /// [project] The ID of the project in which the resource belongs.
  /// [qaScorecardId] A unique ID for the new QaScorecard. This ID will become the final
  /// [source] Possible values:
  /// [updateTime] The most recent time at which the scorecard was updated.
  const QaScorecardState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.isDefault,
    this.location,
    this.name,
    this.project,
    this.qaScorecardId,
    this.source,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'isDefault': ?isDefault,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'qaScorecardId': ?qaScorecardId,
      'source': ?source,
      'updateTime': ?updateTime,
    };
  }

  factory QaScorecardState.fromMap(Map<String, dynamic> map) {
    return QaScorecardState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qaScorecardId: (() { final guardedValue = map['qaScorecardId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

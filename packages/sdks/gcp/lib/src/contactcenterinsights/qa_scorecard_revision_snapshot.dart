// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QaScorecardRevisionSnapshot {
  /// (Output)
  /// The time at which this scorecard was created.
  final pulumi.Input<String>? createTime;
  /// A text description explaining the intent of the scorecard.
  final pulumi.Input<String>? description;
  /// The user-specified display name of the scorecard.
  final pulumi.Input<String>? displayName;
  /// Whether the scorecard is the default one for the project.
  /// A default scorecard cannot be deleted and will always appear first in
  /// scorecard selector.
  final pulumi.Input<bool>? isDefault;
  /// (Output)
  /// Identifier. The scorecard name.
  /// Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
  final pulumi.Input<String>? name;
  /// Possible values:
  /// QA_SCORECARD_SOURCE_CUSTOMER_DEFINED
  /// QA_SCORECARD_SOURCE_DISCOVERY_ENGINE
  final pulumi.Input<String>? source;
  /// (Output)
  /// The most recent time at which the scorecard was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [QaScorecardRevisionSnapshot].
  /// [createTime] (Output)
  /// [description] A text description explaining the intent of the scorecard.
  /// [displayName] The user-specified display name of the scorecard.
  /// [isDefault] Whether the scorecard is the default one for the project.
  /// [name] (Output)
  /// [source] Possible values:
  /// [updateTime] (Output)
  const QaScorecardRevisionSnapshot({
    this.createTime,
    this.description,
    this.displayName,
    this.isDefault,
    this.name,
    this.source,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'isDefault': ?isDefault,
      'name': ?name,
      'source': ?source,
      'updateTime': ?updateTime,
    };
  }

  factory QaScorecardRevisionSnapshot.fromMap(Map<String, dynamic> map) {
    return QaScorecardRevisionSnapshot(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

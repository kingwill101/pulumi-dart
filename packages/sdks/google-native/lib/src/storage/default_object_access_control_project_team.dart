// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The project team associated with the entity, if any.
class DefaultObjectAccessControlProjectTeam {
  /// The project number.
  final pulumi.Input<String>? projectNumber;
  /// The team.
  final pulumi.Input<String>? team;

  /// Creates a new [DefaultObjectAccessControlProjectTeam].
  /// [projectNumber] The project number.
  /// [team] The team.
  DefaultObjectAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': ?projectNumber,
      'team': ?team,
    };
  }

  factory DefaultObjectAccessControlProjectTeam.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlProjectTeam(
      projectNumber: map['projectNumber'] == null ? null : (map['projectNumber']! as String).input(),
      team: map['team'] == null ? null : (map['team']! as String).input(),
    );
  }
}


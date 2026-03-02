// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObjectAccessControlProjectTeam {
  /// The project team associated with the entity
  final pulumi.Input<String>? projectNumber;
  /// The team.
  /// Possible values are: `editors`, `owners`, `viewers`.
  final pulumi.Input<String>? team;

  /// Creates a new [ObjectAccessControlProjectTeam].
  /// [projectNumber] The project team associated with the entity
  /// [team] The team.
  ObjectAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': ?projectNumber,
      'team': ?team,
    };
  }

  factory ObjectAccessControlProjectTeam.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlProjectTeam(
      projectNumber: map['projectNumber'] == null ? null : (map['projectNumber'] as String).input(),
      team: map['team'] == null ? null : (map['team'] as String).input(),
    );
  }
}


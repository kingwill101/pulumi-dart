// ignore_for_file: unused_element, unnecessary_cast


class DefaultObjectAccessControlProjectTeam {
  /// The project team associated with the entity
  final String? projectNumber;
  /// The team.
  /// Possible values are: `editors`, `owners`, `viewers`.
  final String? team;

  /// Creates a new [DefaultObjectAccessControlProjectTeam].
  /// [projectNumber] The project team associated with the entity
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
      projectNumber: map['projectNumber'] == null ? null : map['projectNumber'] as String,
      team: map['team'] == null ? null : map['team'] as String,
    );
  }
}


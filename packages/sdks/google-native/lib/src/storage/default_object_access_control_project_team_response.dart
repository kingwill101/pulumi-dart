// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The project team associated with the entity, if any.
class DefaultObjectAccessControlProjectTeamResponse {
  /// The project number.
  final pulumi.Input<String> projectNumber;
  /// The team.
  final pulumi.Input<String> team;

  /// Creates a new [DefaultObjectAccessControlProjectTeamResponse].
  /// [projectNumber] The project number.
  /// [team] The team.
  DefaultObjectAccessControlProjectTeamResponse({
    required this.projectNumber,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': projectNumber,
      'team': team,
    };
  }

  factory DefaultObjectAccessControlProjectTeamResponse.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlProjectTeamResponse(
      projectNumber: pulumi.Input.fromValue(map['projectNumber'] as String),
      team: pulumi.Input.fromValue(map['team'] as String),
    );
  }
}


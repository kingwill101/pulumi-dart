// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsConfigTargetProjects {
  /// The project IDs. Format {project}.
  final pulumi.Input<List<String>?>? projectIds;

  /// Creates a new [InsightsConfigTargetProjects].
  /// [projectIds] The project IDs. Format {project}.
  const InsightsConfigTargetProjects({
    this.projectIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectIds': ?projectIds,
    };
  }

  factory InsightsConfigTargetProjects.fromMap(Map<String, dynamic> map) {
    return InsightsConfigTargetProjects(
      projectIds: (() { final guardedValue = map['projectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

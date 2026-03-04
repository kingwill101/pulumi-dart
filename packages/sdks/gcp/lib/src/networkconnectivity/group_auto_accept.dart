// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupAutoAccept {
  /// A list of project ids or project numbers for which you want to enable auto-accept. The auto-accept setting is applied to spokes being created or updated in these projects.
  final pulumi.Input<List<String>> autoAcceptProjects;

  /// Creates a new [GroupAutoAccept].
  /// [autoAcceptProjects] A list of project ids or project numbers for which you want to enable auto-accept. The auto-accept setting is applied to spokes being created or updated in these projects.
  GroupAutoAccept({required this.autoAcceptProjects});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'autoAcceptProjects': autoAcceptProjects};
  }

  factory GroupAutoAccept.fromMap(Map<String, dynamic> map) {
    return GroupAutoAccept(
      autoAcceptProjects: pulumi.Input.fromValue(
        (map['autoAcceptProjects'] as List).cast<String>(),
      ),
    );
  }
}

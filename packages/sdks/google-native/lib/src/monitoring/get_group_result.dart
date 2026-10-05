// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroup.
class GetGroupResult {
  /// A user-assigned name for this group, used only for display purposes.
  final String? displayName;
  /// The filter used to determine which monitored resources belong to this group.
  final String? filter;
  /// If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  final bool? isCluster;
  /// The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
  final String? name;
  /// The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  final String? parentName;

  /// Creates a new [GetGroupResult].
  /// [displayName] A user-assigned name for this group, used only for display purposes.
  /// [filter] The filter used to determine which monitored resources belong to this group.
  /// [isCluster] If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  /// [name] The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
  /// [parentName] The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  const GetGroupResult({
    this.displayName,
    this.filter,
    this.isCluster,
    this.name,
    this.parentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'filter': ?filter,
      'isCluster': ?isCluster,
      'name': ?name,
      'parentName': ?parentName,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isCluster: (() { final guardedValue = map['isCluster']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentName: (() { final guardedValue = map['parentName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

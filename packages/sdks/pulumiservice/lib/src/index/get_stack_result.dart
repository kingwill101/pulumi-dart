// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStack.
class GetStackResult {
  /// The Pulumi Cloud organization name.
  final String? organizationName;
  /// The project name.
  final String? projectName;
  /// The stack's unique Pulumi Cloud identifier, which is distinct from the `organization/project/stack` name.
  final String? stackId;
  /// The stack name.
  final String? stackName;
  /// The stack's tags.
  final Map<String, String>? tags;

  /// Creates a new [GetStackResult].
  /// [organizationName] The Pulumi Cloud organization name.
  /// [projectName] The project name.
  /// [stackId] The stack's unique Pulumi Cloud identifier, which is distinct from the `organization/project/stack` name.
  /// [stackName] The stack name.
  /// [tags] The stack's tags.
  const GetStackResult({
    this.organizationName,
    this.projectName,
    this.stackId,
    this.stackName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': ?organizationName,
      'projectName': ?projectName,
      'stackId': ?stackId,
      'stackName': ?stackName,
      'tags': ?tags,
    };
  }

  factory GetStackResult.fromMap(Map<String, dynamic> map) {
    return GetStackResult(
      organizationName: (() { final guardedValue = map['organizationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stackId: (() { final guardedValue = map['stackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stackName: (() { final guardedValue = map['stackName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

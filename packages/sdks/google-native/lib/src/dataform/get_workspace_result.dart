// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The workspace's name.
  final String name;

  /// Creates a new [GetWorkspaceResult].
  /// [name] The workspace's name.
  const GetWorkspaceResult({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      name: map['name'] as String,
    );
  }
}


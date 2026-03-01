// ignore_for_file: unused_element, unnecessary_cast


/// NodeRuntimeHandlerFeatures is a set of features implemented by the runtime handler.
class NodeRuntimeHandlerFeatures {
  /// RecursiveReadOnlyMounts is set to true if the runtime handler supports RecursiveReadOnlyMounts.
  final bool? recursiveReadOnlyMounts;
  /// UserNamespaces is set to true if the runtime handler supports UserNamespaces, including for volumes.
  final bool? userNamespaces;

  /// Creates a new [NodeRuntimeHandlerFeatures].
  /// [recursiveReadOnlyMounts] RecursiveReadOnlyMounts is set to true if the runtime handler supports RecursiveReadOnlyMounts.
  /// [userNamespaces] UserNamespaces is set to true if the runtime handler supports UserNamespaces, including for volumes.
  NodeRuntimeHandlerFeatures({
    this.recursiveReadOnlyMounts,
    this.userNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recursiveReadOnlyMounts': ?recursiveReadOnlyMounts,
      'userNamespaces': ?userNamespaces,
    };
  }

  factory NodeRuntimeHandlerFeatures.fromMap(Map<String, dynamic> map) {
    return NodeRuntimeHandlerFeatures(
      recursiveReadOnlyMounts: map['recursiveReadOnlyMounts'] == null ? null : map['recursiveReadOnlyMounts'] as bool,
      userNamespaces: map['userNamespaces'] == null ? null : map['userNamespaces'] as bool,
    );
  }
}


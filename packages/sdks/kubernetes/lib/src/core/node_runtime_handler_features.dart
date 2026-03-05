// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeRuntimeHandlerFeatures is a set of features implemented by the runtime handler.
class NodeRuntimeHandlerFeatures {
  /// RecursiveReadOnlyMounts is set to true if the runtime handler supports RecursiveReadOnlyMounts.
  final pulumi.Input<bool>? recursiveReadOnlyMounts;
  /// UserNamespaces is set to true if the runtime handler supports UserNamespaces, including for volumes.
  final pulumi.Input<bool>? userNamespaces;

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
      recursiveReadOnlyMounts: (() { final guardedValue = map['recursiveReadOnlyMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userNamespaces: (() { final guardedValue = map['userNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


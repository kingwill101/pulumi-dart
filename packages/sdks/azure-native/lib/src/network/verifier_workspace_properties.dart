// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Verifier Workspace resource.
class VerifierWorkspaceProperties {
  final pulumi.Input<String>? description;

  /// Creates a new [VerifierWorkspaceProperties].
  /// [description] Optional.
  VerifierWorkspaceProperties({this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description};
  }

  factory VerifierWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return VerifierWorkspaceProperties(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

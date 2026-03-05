// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FoldersPolicyBindingTarget {
  /// Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// Examples for each one of the following supported principal set types:
  /// * Folder: `//cloudresourcemanager.googleapis.com/folders/FOLDER_ID`
  /// It must be parent by the policy binding's parent (the folder).
  final pulumi.Input<String>? principalSet;

  /// Creates a new [FoldersPolicyBindingTarget].
  /// [principalSet] Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  FoldersPolicyBindingTarget({
    this.principalSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalSet': ?principalSet,
    };
  }

  factory FoldersPolicyBindingTarget.fromMap(Map<String, dynamic> map) {
    return FoldersPolicyBindingTarget(
      principalSet: (() { final guardedValue = map['principalSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FoldersPolicyBindingTarget {
  /// Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// Examples for each one of the following supported principal set types:
  /// * Folder: `//cloudresourcemanager.googleapis.com/folders/FOLDER_ID`
  /// It must be parent by the policy binding's parent (the folder).
  final pulumi.Input<String?>? principalSet;
  /// Immutable. Full Resource Name of the resource used for access policy bindings.
  /// Use this together with `policyKind = "ACCESS"`. Examples:
  /// * Folder: `//cloudresourcemanager.googleapis.com/folders/FOLDER_ID`
  /// It must be the policy binding's parent (the folder).
  final pulumi.Input<String?>? resource;

  /// Creates a new [FoldersPolicyBindingTarget].
  /// [principalSet] Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// [resource] Immutable. Full Resource Name of the resource used for access policy bindings.
  const FoldersPolicyBindingTarget({
    this.principalSet,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalSet': ?principalSet,
      'resource': ?resource,
    };
  }

  factory FoldersPolicyBindingTarget.fromMap(Map<String, dynamic> map) {
    return FoldersPolicyBindingTarget(
      principalSet: (() { final guardedValue = map['principalSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

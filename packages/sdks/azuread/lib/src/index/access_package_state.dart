// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPackage resources.
class AccessPackageState {
  /// The ID of the Catalog this access package will be created in.
  final pulumi.Input<String>? catalogId;
  /// The description of the access package.
  final pulumi.Input<String>? description;
  /// The display name of the access package.
  final pulumi.Input<String>? displayName;
  /// Whether the access package is hidden from the requestor.
  final pulumi.Input<bool>? hidden;

  /// Creates a new [AccessPackageState].
  /// [catalogId] The ID of the Catalog this access package will be created in.
  /// [description] The description of the access package.
  /// [displayName] The display name of the access package.
  /// [hidden] Whether the access package is hidden from the requestor.
  const AccessPackageState({
    this.catalogId,
    this.description,
    this.displayName,
    this.hidden,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'description': ?description,
      'displayName': ?displayName,
      'hidden': ?hidden,
    };
  }

  factory AccessPackageState.fromMap(Map<String, dynamic> map) {
    return AccessPackageState(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


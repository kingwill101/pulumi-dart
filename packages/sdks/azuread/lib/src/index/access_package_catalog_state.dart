// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPackageCatalog resources.
class AccessPackageCatalogState {
  /// The description of the access package catalog.
  final pulumi.Input<String>? description;
  /// The display name of the access package catalog.
  final pulumi.Input<String>? displayName;
  /// Whether the access packages in this catalog can be requested by users outside the tenant.
  final pulumi.Input<bool>? externallyVisible;
  /// Whether the access packages in this catalog are available for management.
  final pulumi.Input<bool>? published;

  /// Creates a new [AccessPackageCatalogState].
  /// [description] The description of the access package catalog.
  /// [displayName] The display name of the access package catalog.
  /// [externallyVisible] Whether the access packages in this catalog can be requested by users outside the tenant.
  /// [published] Whether the access packages in this catalog are available for management.
  const AccessPackageCatalogState({
    this.description,
    this.displayName,
    this.externallyVisible,
    this.published,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'externallyVisible': ?externallyVisible,
      'published': ?published,
    };
  }

  factory AccessPackageCatalogState.fromMap(Map<String, dynamic> map) {
    return AccessPackageCatalogState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externallyVisible: (() { final guardedValue = map['externallyVisible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      published: (() { final guardedValue = map['published']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

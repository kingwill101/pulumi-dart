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
  AccessPackageCatalogState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? externallyVisible,
    pulumi.Output<bool>? published,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      externallyVisible = pulumi.Input.asOptionalInput<bool>(externallyVisible),
      published = pulumi.Input.asOptionalInput<bool>(published);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      externallyVisible: map['externallyVisible'] == null ? null : pulumi.Output.create<bool>(map['externallyVisible'] as bool),
      published: map['published'] == null ? null : pulumi.Output.create<bool>(map['published'] as bool),
    );
  }
}


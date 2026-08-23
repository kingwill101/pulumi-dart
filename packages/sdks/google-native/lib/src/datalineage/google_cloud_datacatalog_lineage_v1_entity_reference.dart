// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The soft reference to everything you can attach a lineage event to.
class GoogleCloudDatacatalogLineageV1EntityReference {
  /// [Fully Qualified Name (FQN)](https://cloud.google.com/data-catalog/docs/fully-qualified-names) of the entity.
  final pulumi.Input<String> fullyQualifiedName;

  /// Creates a new [GoogleCloudDatacatalogLineageV1EntityReference].
  /// [fullyQualifiedName] [Fully Qualified Name (FQN)](https://cloud.google.com/data-catalog/docs/fully-qualified-names) of the entity.
  const GoogleCloudDatacatalogLineageV1EntityReference({
    required this.fullyQualifiedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyQualifiedName': fullyQualifiedName,
    };
  }

  factory GoogleCloudDatacatalogLineageV1EntityReference.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogLineageV1EntityReference(
      fullyQualifiedName: pulumi.Input.fromValue(map['fullyQualifiedName'] as String),
    );
  }
}

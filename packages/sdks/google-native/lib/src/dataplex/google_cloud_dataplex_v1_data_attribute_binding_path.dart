// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a subresource of the given resource, and associated bindings with it. Currently supported subresources are column and partition schema fields within a table.
class GoogleCloudDataplexV1DataAttributeBindingPath {
  /// Optional. List of attributes to be associated with the path of the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  final pulumi.Input<List<String>>? attributes;
  /// The name identifier of the path. Nested columns should be of the form: 'address.city'.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDataplexV1DataAttributeBindingPath].
  /// [attributes] Optional. List of attributes to be associated with the path of the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  /// [name] The name identifier of the path. Nested columns should be of the form: 'address.city'.
  const GoogleCloudDataplexV1DataAttributeBindingPath({
    this.attributes,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'name': name,
    };
  }

  factory GoogleCloudDataplexV1DataAttributeBindingPath.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataAttributeBindingPath(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


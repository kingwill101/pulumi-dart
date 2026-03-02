// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a subresource of the given resource, and associated bindings with it. Currently supported subresources are column and partition schema fields within a table.
class GoogleCloudDataplexV1DataAttributeBindingPathResponse {
  /// Optional. List of attributes to be associated with the path of the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  final pulumi.Input<List<String>> attributes;
  /// The name identifier of the path. Nested columns should be of the form: 'address.city'.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDataplexV1DataAttributeBindingPathResponse].
  /// [attributes] Optional. List of attributes to be associated with the path of the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  /// [name] The name identifier of the path. Nested columns should be of the form: 'address.city'.
  GoogleCloudDataplexV1DataAttributeBindingPathResponse({
    required this.attributes,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'name': name,
    };
  }

  factory GoogleCloudDataplexV1DataAttributeBindingPathResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataAttributeBindingPathResponse(
      attributes: ((map['attributes'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}


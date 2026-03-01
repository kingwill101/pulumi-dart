// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_processor_properties.dart';

/// {@template pulumi_syntex_document_processor_args_doc}
/// The set of arguments for DocumentProcessor.
/// {@endtemplate}
/// {@macro pulumi_syntex_document_processor_args_doc}
class DocumentProcessorArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of document processor resource.
  final pulumi.Input<String>? processorName;
  /// Document processor properties.
  final pulumi.Input<DocumentProcessorProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DocumentProcessorArgs].
  /// [location] The geo-location where the resource lives
  /// [processorName] The name of document processor resource.
  /// [properties] Document processor properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DocumentProcessorArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? processorName,
    pulumi.Output<DocumentProcessorProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      processorName = pulumi.Input.asOptionalInput<String>(processorName),
      properties = pulumi.Input.asOptionalInput<DocumentProcessorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'processorName': ?processorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DocumentProcessorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DocumentProcessorArgs.fromMap(Map<String, dynamic> map) {
    return DocumentProcessorArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      processorName: map['processorName'] == null ? null : pulumi.Output.create<String>(map['processorName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DocumentProcessorProperties>(DocumentProcessorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


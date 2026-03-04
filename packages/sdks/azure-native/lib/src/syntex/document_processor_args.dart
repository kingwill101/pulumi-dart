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
    this.location,
    this.processorName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'processorName': ?processorName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentProcessorProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DocumentProcessorArgs.fromMap(Map<String, dynamic> map) {
    return DocumentProcessorArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processorName: (() {
        final guardedValue = map['processorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DocumentProcessorProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

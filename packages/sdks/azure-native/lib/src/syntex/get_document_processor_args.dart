// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_syntex_get_document_processor_args_doc}
/// Arguments for getDocumentProcessor.
/// {@endtemplate}
/// {@macro pulumi_syntex_get_document_processor_args_doc}
class GetDocumentProcessorArgs {
  /// The name of document processor resource.
  final pulumi.Input<String> processorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDocumentProcessorArgs].
  /// [processorName] The name of document processor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDocumentProcessorArgs({
    required this.processorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'processorName': processorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDocumentProcessorArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentProcessorArgs(
      processorName: pulumi.Input.fromValue(map['processorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


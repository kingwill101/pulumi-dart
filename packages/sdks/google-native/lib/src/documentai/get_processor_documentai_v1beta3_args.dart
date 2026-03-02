// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_documentai_v1beta3_get_processor_documentai_v1beta3_args_doc}
/// Arguments for getProcessor.
/// {@endtemplate}
/// {@macro pulumi_documentai_v1beta3_get_processor_documentai_v1beta3_args_doc}
class GetProcessorDocumentaiV1beta3Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProcessorDocumentaiV1beta3Args].
  /// [location] Required.
  /// [processorId] Required.
  /// [project] Optional.
  GetProcessorDocumentaiV1beta3Args({
    required this.location,
    required this.processorId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'processorId': processorId,
      'project': ?project,
    };
  }

  factory GetProcessorDocumentaiV1beta3Args.fromMap(Map<String, dynamic> map) {
    return GetProcessorDocumentaiV1beta3Args(
      location: (map['location'] as String).input(),
      processorId: (map['processorId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_metadata_response.dart';
import 'status_response.dart';
import 'template_metadata_response.dart';

/// Result data returned by getTemplate.
class GetTemplateResult {
  /// The template metadata describing the template name, available parameters, etc.
  final TemplateMetadataResponse? metadata;
  /// Describes the runtime metadata with SDKInfo and available parameters.
  final RuntimeMetadataResponse? runtimeMetadata;
  /// The status of the get template request. Any problems with the request will be indicated in the error_details.
  final StatusResponse? status;
  /// Template Type.
  final String? templateType;

  /// Creates a new [GetTemplateResult].
  /// [metadata] The template metadata describing the template name, available parameters, etc.
  /// [runtimeMetadata] Describes the runtime metadata with SDKInfo and available parameters.
  /// [status] The status of the get template request. Any problems with the request will be indicated in the error_details.
  /// [templateType] Template Type.
  const GetTemplateResult({
    this.metadata,
    this.runtimeMetadata,
    this.status,
    this.templateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata?.toMap(),
      'runtimeMetadata': ?runtimeMetadata?.toMap(),
      'status': ?status?.toMap(),
      'templateType': ?templateType,
    };
  }

  factory GetTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateResult(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return TemplateMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runtimeMetadata: (() { final guardedValue = map['runtimeMetadata']; if (guardedValue == null) return null; return RuntimeMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      templateType: (() { final guardedValue = map['templateType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

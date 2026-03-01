// ignore_for_file: unused_element, unnecessary_cast

import 'error_definition_response.dart';

/// An error response from the Virtual Instance for SAP Workload service.
class SAPVirtualInstanceErrorResponse {
  /// The Virtual Instance for SAP error body.
  final ErrorDefinitionResponse? properties;

  /// Creates a new [SAPVirtualInstanceErrorResponse].
  /// [properties] The Virtual Instance for SAP error body.
  SAPVirtualInstanceErrorResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory SAPVirtualInstanceErrorResponse.fromMap(Map<String, dynamic> map) {
    return SAPVirtualInstanceErrorResponse(
      properties: map['properties'] == null ? null : ErrorDefinitionResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}


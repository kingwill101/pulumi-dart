// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_definition_response.dart';

/// An error response from the Virtual Instance for SAP Workload service.
class SAPVirtualInstanceErrorResponse {
  /// The Virtual Instance for SAP error body.
  final pulumi.Input<ErrorDefinitionResponse>? properties;

  /// Creates a new [SAPVirtualInstanceErrorResponse].
  /// [properties] The Virtual Instance for SAP error body.
  SAPVirtualInstanceErrorResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<ErrorDefinitionResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory SAPVirtualInstanceErrorResponse.fromMap(Map<String, dynamic> map) {
    return SAPVirtualInstanceErrorResponse(
      properties: map['properties'] == null ? null : (ErrorDefinitionResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


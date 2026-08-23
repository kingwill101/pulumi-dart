// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Document processor properties
class DocumentProcessorPropertiesResponse {
  /// The managed resource provisioning state.
  final pulumi.Input<String> provisioningState;
  /// The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  final pulumi.Input<String> spoTenantId;
  /// The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  final pulumi.Input<String> spoTenantUrl;

  /// Creates a new [DocumentProcessorPropertiesResponse].
  /// [provisioningState] The managed resource provisioning state.
  /// [spoTenantId] The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  /// [spoTenantUrl] The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  const DocumentProcessorPropertiesResponse({
    required this.provisioningState,
    required this.spoTenantId,
    required this.spoTenantUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'spoTenantId': spoTenantId,
      'spoTenantUrl': spoTenantUrl,
    };
  }

  factory DocumentProcessorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DocumentProcessorPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      spoTenantId: pulumi.Input.fromValue(map['spoTenantId'] as String),
      spoTenantUrl: pulumi.Input.fromValue(map['spoTenantUrl'] as String),
    );
  }
}

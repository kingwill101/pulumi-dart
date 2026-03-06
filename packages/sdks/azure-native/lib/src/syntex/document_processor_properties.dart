// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Document processor properties
class DocumentProcessorProperties {
  /// The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  final pulumi.Input<String> spoTenantId;
  /// The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  final pulumi.Input<String> spoTenantUrl;

  /// Creates a new [DocumentProcessorProperties].
  /// [spoTenantId] The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  /// [spoTenantUrl] The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  const DocumentProcessorProperties({
    required this.spoTenantId,
    required this.spoTenantUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spoTenantId': spoTenantId,
      'spoTenantUrl': spoTenantUrl,
    };
  }

  factory DocumentProcessorProperties.fromMap(Map<String, dynamic> map) {
    return DocumentProcessorProperties(
      spoTenantId: pulumi.Input.fromValue(map['spoTenantId'] as String),
      spoTenantUrl: pulumi.Input.fromValue(map['spoTenantUrl'] as String),
    );
  }
}


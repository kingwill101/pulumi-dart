// ignore_for_file: unused_element, unnecessary_cast


/// Document processor properties
class DocumentProcessorProperties {
  /// The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  final String spoTenantId;
  /// The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  final String spoTenantUrl;

  /// Creates a new [DocumentProcessorProperties].
  /// [spoTenantId] The ID (GUID) of an SharePoint Online (SPO) tenant associated with this document processor resource
  /// [spoTenantUrl] The URL of an SharePoint Online (SPO) tenant associated with this document processor resource
  DocumentProcessorProperties({
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
      spoTenantId: map['spoTenantId'] as String,
      spoTenantUrl: map['spoTenantUrl'] as String,
    );
  }
}


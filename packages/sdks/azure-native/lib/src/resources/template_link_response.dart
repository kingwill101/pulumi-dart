// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entity representing the reference to the template.
class TemplateLinkResponse {
  /// If included, must match the ContentVersion in the template.
  final pulumi.Input<String>? contentVersion;
  /// The resource id of a Template Spec. Use either the id or uri property, but not both.
  final pulumi.Input<String>? id;
  /// The query string (for example, a SAS token) to be used with the templateLink URI.
  final pulumi.Input<String>? queryString;
  /// The relativePath property can be used to deploy a linked template at a location relative to the parent. If the parent template was linked with a TemplateSpec, this will reference an artifact in the TemplateSpec.  If the parent was linked with a URI, the child deployment will be a combination of the parent and relativePath URIs
  final pulumi.Input<String>? relativePath;
  /// The URI of the template to deploy. Use either the uri or id property, but not both.
  final pulumi.Input<String>? uri;

  /// Creates a new [TemplateLinkResponse].
  /// [contentVersion] If included, must match the ContentVersion in the template.
  /// [id] The resource id of a Template Spec. Use either the id or uri property, but not both.
  /// [queryString] The query string (for example, a SAS token) to be used with the templateLink URI.
  /// [relativePath] The relativePath property can be used to deploy a linked template at a location relative to the parent. If the parent template was linked with a TemplateSpec, this will reference an artifact in the TemplateSpec.  If the parent was linked with a URI, the child deployment will be a combination of the parent and relativePath URIs
  /// [uri] The URI of the template to deploy. Use either the uri or id property, but not both.
  TemplateLinkResponse({
    this.contentVersion,
    this.id,
    this.queryString,
    this.relativePath,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentVersion': ?contentVersion,
      'id': ?id,
      'queryString': ?queryString,
      'relativePath': ?relativePath,
      'uri': ?uri,
    };
  }

  factory TemplateLinkResponse.fromMap(Map<String, dynamic> map) {
    return TemplateLinkResponse(
      contentVersion: map['contentVersion'] == null ? null : (map['contentVersion']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      queryString: map['queryString'] == null ? null : (map['queryString']! as String).input(),
      relativePath: map['relativePath'] == null ? null : (map['relativePath']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}


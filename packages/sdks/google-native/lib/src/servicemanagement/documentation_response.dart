// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'documentation_rule_response.dart';
import 'page_response.dart';

/// `Documentation` provides the information for describing a service. Example: documentation: summary: &gt; The Google Calendar API gives access to most calendar features. pages: - name: Overview content: (== include google/foo/overview.md ==) - name: Tutorial content: (== include google/foo/tutorial.md ==) subpages: - name: Java content: (== include google/foo/tutorial_java.md ==) rules: - selector: google.calendar.Calendar.Get description: &gt; ... - selector: google.calendar.Calendar.Put description: &gt; ... Documentation is provided in markdown syntax. In addition to standard markdown features, definition lists, tables and fenced code blocks are supported. Section headers can be provided and are interpreted relative to the section nesting of the context where a documentation fragment is embedded. Documentation from the IDL is merged with documentation defined via the config at normalization time, where documentation provided by config rules overrides IDL provided. A number of constructs specific to the API platform are supported in documentation text. In order to reference a proto element, the following notation can be used: [fully.qualified.proto.name][] To override the display text used for the link, this can be used: [display text][fully.qualified.proto.name] Text can be excluded from doc using the following notation: (-- internal comment --) A few directives are available in documentation. Note that directives must appear on a single line to be properly identified. The `include` directive includes a markdown file from an external source: (== include path/to/file ==) The `resource_for` directive marks a message to be the resource of a collection in REST view. If it is not specified, tools attempt to infer the resource from the operations in a collection: (== resource_for v1.shelves.books ==) The directive `suppress_warning` does not directly affect documentation and is documented together with service config validation.
class DocumentationResponse {
  /// The URL to the root of documentation.
  final pulumi.Input<String> documentationRootUrl;

  /// Declares a single overview page. For example: documentation: summary: ... overview: (== include overview.md ==) This is a shortcut for the following declaration (using pages style): documentation: summary: ... pages: - name: Overview content: (== include overview.md ==) Note: you cannot specify both `overview` field and `pages` field.
  final pulumi.Input<String> overview;

  /// The top level pages for the documentation set.
  final pulumi.Input<List<PageResponse>> pages;

  /// A list of documentation rules that apply to individual API elements. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<DocumentationRuleResponse>> rules;

  /// Specifies section and content to override boilerplate content provided by go/api-docgen. Currently overrides following sections: 1. rest.service.client_libraries
  final pulumi.Input<List<PageResponse>> sectionOverrides;

  /// Specifies the service root url if the default one (the service name from the yaml file) is not suitable. This can be seen in any fully specified service urls as well as sections that show a base that other urls are relative to.
  final pulumi.Input<String> serviceRootUrl;

  /// A short description of what the service does. The summary must be plain text. It becomes the overview of the service displayed in Google Cloud Console. NOTE: This field is equivalent to the standard field `description`.
  final pulumi.Input<String> summary;

  /// Creates a new [DocumentationResponse].
  /// [documentationRootUrl] The URL to the root of documentation.
  /// [overview] Declares a single overview page. For example: documentation: summary: ... overview: (== include overview.md ==) This is a shortcut for the following declaration (using pages style): documentation: summary: ... pages: - name: Overview content: (== include overview.md ==) Note: you cannot specify both `overview` field and `pages` field.
  /// [pages] The top level pages for the documentation set.
  /// [rules] A list of documentation rules that apply to individual API elements. **NOTE:** All service configuration rules follow "last one wins" order.
  /// [sectionOverrides] Specifies section and content to override boilerplate content provided by go/api-docgen. Currently overrides following sections: 1. rest.service.client_libraries
  /// [serviceRootUrl] Specifies the service root url if the default one (the service name from the yaml file) is not suitable. This can be seen in any fully specified service urls as well as sections that show a base that other urls are relative to.
  /// [summary] A short description of what the service does. The summary must be plain text. It becomes the overview of the service displayed in Google Cloud Console. NOTE: This field is equivalent to the standard field `description`.
  DocumentationResponse({
    required this.documentationRootUrl,
    required this.overview,
    required this.pages,
    required this.rules,
    required this.sectionOverrides,
    required this.serviceRootUrl,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentationRootUrl': documentationRootUrl,
      'overview': overview,
      'pages':
          pulumi.Input.mapInputValue<
            List<PageResponse>,
            List<Map<String, dynamic>>
          >(
            pages,
            (value) =>
                pulumi.Input.encodeList<PageResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'rules':
          pulumi.Input.mapInputValue<
            List<DocumentationRuleResponse>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  DocumentationRuleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sectionOverrides':
          pulumi.Input.mapInputValue<
            List<PageResponse>,
            List<Map<String, dynamic>>
          >(
            sectionOverrides,
            (value) =>
                pulumi.Input.encodeList<PageResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'serviceRootUrl': serviceRootUrl,
      'summary': summary,
    };
  }

  factory DocumentationResponse.fromMap(Map<String, dynamic> map) {
    return DocumentationResponse(
      documentationRootUrl: pulumi.Input.fromValue(
        map['documentationRootUrl'] as String,
      ),
      overview: pulumi.Input.fromValue(map['overview'] as String),
      pages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PageResponse>(
          map['pages']!,
          (value) =>
              PageResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DocumentationRuleResponse>(
          map['rules']!,
          (value) => DocumentationRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sectionOverrides: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PageResponse>(
          map['sectionOverrides']!,
          (value) =>
              PageResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      serviceRootUrl: pulumi.Input.fromValue(map['serviceRootUrl'] as String),
      summary: pulumi.Input.fromValue(map['summary'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'documentation_rule.dart';
import 'page.dart';

/// `Documentation` provides the information for describing a service. Example: documentation: summary: &gt; The Google Calendar API gives access to most calendar features. pages: - name: Overview content: (== include google/foo/overview.md ==) - name: Tutorial content: (== include google/foo/tutorial.md ==) subpages: - name: Java content: (== include google/foo/tutorial_java.md ==) rules: - selector: google.calendar.Calendar.Get description: &gt; ... - selector: google.calendar.Calendar.Put description: &gt; ... Documentation is provided in markdown syntax. In addition to standard markdown features, definition lists, tables and fenced code blocks are supported. Section headers can be provided and are interpreted relative to the section nesting of the context where a documentation fragment is embedded. Documentation from the IDL is merged with documentation defined via the config at normalization time, where documentation provided by config rules overrides IDL provided. A number of constructs specific to the API platform are supported in documentation text. In order to reference a proto element, the following notation can be used: [fully.qualified.proto.name][] To override the display text used for the link, this can be used: [display text][fully.qualified.proto.name] Text can be excluded from doc using the following notation: (-- internal comment --) A few directives are available in documentation. Note that directives must appear on a single line to be properly identified. The `include` directive includes a markdown file from an external source: (== include path/to/file ==) The `resource_for` directive marks a message to be the resource of a collection in REST view. If it is not specified, tools attempt to infer the resource from the operations in a collection: (== resource_for v1.shelves.books ==) The directive `suppress_warning` does not directly affect documentation and is documented together with service config validation.
class Documentation {
  /// The URL to the root of documentation.
  final pulumi.Input<String>? documentationRootUrl;

  /// Declares a single overview page. For example: documentation: summary: ... overview: (== include overview.md ==) This is a shortcut for the following declaration (using pages style): documentation: summary: ... pages: - name: Overview content: (== include overview.md ==) Note: you cannot specify both `overview` field and `pages` field.
  final pulumi.Input<String>? overview;

  /// The top level pages for the documentation set.
  final pulumi.Input<List<Page>>? pages;

  /// A list of documentation rules that apply to individual API elements. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<DocumentationRule>>? rules;

  /// Specifies section and content to override boilerplate content provided by go/api-docgen. Currently overrides following sections: 1. rest.service.client_libraries
  final pulumi.Input<List<Page>>? sectionOverrides;

  /// Specifies the service root url if the default one (the service name from the yaml file) is not suitable. This can be seen in any fully specified service urls as well as sections that show a base that other urls are relative to.
  final pulumi.Input<String>? serviceRootUrl;

  /// A short description of what the service does. The summary must be plain text. It becomes the overview of the service displayed in Google Cloud Console. NOTE: This field is equivalent to the standard field `description`.
  final pulumi.Input<String>? summary;

  /// Creates a new [Documentation].
  /// [documentationRootUrl] The URL to the root of documentation.
  /// [overview] Declares a single overview page. For example: documentation: summary: ... overview: (== include overview.md ==) This is a shortcut for the following declaration (using pages style): documentation: summary: ... pages: - name: Overview content: (== include overview.md ==) Note: you cannot specify both `overview` field and `pages` field.
  /// [pages] The top level pages for the documentation set.
  /// [rules] A list of documentation rules that apply to individual API elements. **NOTE:** All service configuration rules follow "last one wins" order.
  /// [sectionOverrides] Specifies section and content to override boilerplate content provided by go/api-docgen. Currently overrides following sections: 1. rest.service.client_libraries
  /// [serviceRootUrl] Specifies the service root url if the default one (the service name from the yaml file) is not suitable. This can be seen in any fully specified service urls as well as sections that show a base that other urls are relative to.
  /// [summary] A short description of what the service does. The summary must be plain text. It becomes the overview of the service displayed in Google Cloud Console. NOTE: This field is equivalent to the standard field `description`.
  Documentation({
    this.documentationRootUrl,
    this.overview,
    this.pages,
    this.rules,
    this.sectionOverrides,
    this.serviceRootUrl,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentationRootUrl': ?documentationRootUrl,
      'overview': ?overview,
      'pages':
          ?pulumi.Input.mapOptionalInputValue<
            List<Page>,
            List<Map<String, dynamic>>
          >(
            pages,
            (value) => pulumi.Input.encodeList<Page, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<DocumentationRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  DocumentationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sectionOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<Page>,
            List<Map<String, dynamic>>
          >(
            sectionOverrides,
            (value) => pulumi.Input.encodeList<Page, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'serviceRootUrl': ?serviceRootUrl,
      'summary': ?summary,
    };
  }

  factory Documentation.fromMap(Map<String, dynamic> map) {
    return Documentation(
      documentationRootUrl: (() {
        final guardedValue = map['documentationRootUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      overview: (() {
        final guardedValue = map['overview'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pages: (() {
        final guardedValue = map['pages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Page>(
            guardedValue,
            (value) => Page.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DocumentationRule>(
            guardedValue,
            (value) => DocumentationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sectionOverrides: (() {
        final guardedValue = map['sectionOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Page>(
            guardedValue,
            (value) => Page.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      serviceRootUrl: (() {
        final guardedValue = map['serviceRootUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      summary: (() {
        final guardedValue = map['summary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

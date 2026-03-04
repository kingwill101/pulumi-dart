// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolGoogleSearchTool {
  /// Content will be fetched directly from these URLs for context and grounding.
  /// More details: https://cloud.google.com/vertex-ai/generative-ai/docs/url-context.
  /// Example: "https://example.com/path.html". A maximum of 20 URLs are allowed.
  final pulumi.Input<List<String>>? contextUrls;

  /// Description of the tool's purpose.
  final pulumi.Input<String>? description;

  /// List of domains to be excluded from the search results.
  /// Example: "example.com".
  /// A maximum of 2000 domains can be excluded.
  final pulumi.Input<List<String>>? excludeDomains;

  /// The name of the tool.
  final pulumi.Input<String> name;

  /// Specifies domain names to guide the search.
  /// The model will be instructed to prioritize these domains
  /// when formulating queries for google search.
  /// This is a best-effort hint and these domains may or may
  /// not be exclusively reflected in the final search results.
  /// Example: "example.com", "another.site".
  /// A maximum of 20 domains can be specified.
  final pulumi.Input<List<String>>? preferredDomains;

  /// Creates a new [ToolGoogleSearchTool].
  /// [contextUrls] Content will be fetched directly from these URLs for context and grounding.
  /// [description] Description of the tool's purpose.
  /// [excludeDomains] List of domains to be excluded from the search results.
  /// [name] The name of the tool.
  /// [preferredDomains] Specifies domain names to guide the search.
  ToolGoogleSearchTool({
    this.contextUrls,
    this.description,
    this.excludeDomains,
    required this.name,
    this.preferredDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextUrls': ?contextUrls,
      'description': ?description,
      'excludeDomains': ?excludeDomains,
      'name': name,
      'preferredDomains': ?preferredDomains,
    };
  }

  factory ToolGoogleSearchTool.fromMap(Map<String, dynamic> map) {
    return ToolGoogleSearchTool(
      contextUrls: (() {
        final guardedValue = map['contextUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeDomains: (() {
        final guardedValue = map['excludeDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      preferredDomains: (() {
        final guardedValue = map['preferredDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

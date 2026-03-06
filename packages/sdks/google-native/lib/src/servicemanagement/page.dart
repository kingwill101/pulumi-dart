// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a documentation page. A page can contain subpages to represent nested documentation set structure.
class Page {
  /// The Markdown content of the page. You can use (== include {path} ==) to include content from a Markdown file. The content can be used to produce the documentation page such as HTML format page.
  final pulumi.Input<String>? content;
  /// The name of the page. It will be used as an identity of the page to generate URI of the page, text of the link to this page in navigation, etc. The full page name (start from the root page name to this page concatenated with `.`) can be used as reference to the page in your documentation. For example: pages: - name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java content: (== include tutorial_java.md ==) You can reference `Java` page using Markdown reference link syntax: `Java`.
  final pulumi.Input<String>? name;
  /// Subpages of this page. The order of subpages specified here will be honored in the generated docset.
  final pulumi.Input<List<Page>>? subpages;

  /// Creates a new [Page].
  /// [content] The Markdown content of the page. You can use (== include {path} ==) to include content from a Markdown file. The content can be used to produce the documentation page such as HTML format page.
  /// [name] The name of the page. It will be used as an identity of the page to generate URI of the page, text of the link to this page in navigation, etc. The full page name (start from the root page name to this page concatenated with `.`) can be used as reference to the page in your documentation. For example: pages: - name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java content: (== include tutorial_java.md ==) You can reference `Java` page using Markdown reference link syntax: `Java`.
  /// [subpages] Subpages of this page. The order of subpages specified here will be honored in the generated docset.
  const Page({
    this.content,
    this.name,
    this.subpages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'name': ?name,
      'subpages': ?pulumi.Input.mapOptionalInputValue<List<Page>, List<Map<String, dynamic>>>(subpages, (value) => pulumi.Input.encodeList<Page, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Page.fromMap(Map<String, dynamic> map) {
    return Page(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subpages: (() { final guardedValue = map['subpages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Page>(guardedValue, (value) => Page.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


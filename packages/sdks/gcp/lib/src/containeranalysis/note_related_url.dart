// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NoteRelatedUrl {
  /// Label to describe usage of the URL
  final pulumi.Input<String>? label;
  /// Specific URL associated with the resource.
  final pulumi.Input<String> url;

  /// Creates a new [NoteRelatedUrl].
  /// [label] Label to describe usage of the URL
  /// [url] Specific URL associated with the resource.
  const NoteRelatedUrl({
    this.label,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'url': url,
    };
  }

  factory NoteRelatedUrl.fromMap(Map<String, dynamic> map) {
    return NoteRelatedUrl(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

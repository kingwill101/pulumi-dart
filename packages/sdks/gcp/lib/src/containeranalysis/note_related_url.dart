// ignore_for_file: unused_element, unnecessary_cast


class NoteRelatedUrl {
  /// Label to describe usage of the URL
  final String? label;
  /// Specific URL associated with the resource.
  final String url;

  /// Creates a new [NoteRelatedUrl].
  /// [label] Label to describe usage of the URL
  /// [url] Specific URL associated with the resource.
  NoteRelatedUrl({
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
      label: map['label'] == null ? null : map['label'] as String,
      url: map['url'] as String,
    );
  }
}


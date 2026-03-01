// ignore_for_file: unused_element, unnecessary_cast


/// The information of a highlighted file that user should pay attention to.
class HighlightedFileResponse {
  /// The path of the highlighted file.
  final String path;
  /// The name of sections to highlight.
  final List<String>? sections;
  /// A flag to save whether this file is viewed by user.
  final bool? visited;

  /// Creates a new [HighlightedFileResponse].
  /// [path] The path of the highlighted file.
  /// [sections] The name of sections to highlight.
  /// [visited] A flag to save whether this file is viewed by user.
  HighlightedFileResponse({
    required this.path,
    this.sections,
    this.visited,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'sections': ?sections,
      'visited': ?visited,
    };
  }

  factory HighlightedFileResponse.fromMap(Map<String, dynamic> map) {
    return HighlightedFileResponse(
      path: map['path'] as String,
      sections: map['sections'] == null ? null : (map['sections'] as List).cast<String>(),
      visited: map['visited'] == null ? null : map['visited'] as bool,
    );
  }
}


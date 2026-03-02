// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information of a highlighted file that user should pay attention to.
class HighlightedFile {
  /// The path of the highlighted file.
  final pulumi.Input<String> path;
  /// The name of sections to highlight.
  final pulumi.Input<List<String>>? sections;
  /// A flag to save whether this file is viewed by user.
  final pulumi.Input<bool>? visited;

  /// Creates a new [HighlightedFile].
  /// [path] The path of the highlighted file.
  /// [sections] The name of sections to highlight.
  /// [visited] A flag to save whether this file is viewed by user.
  HighlightedFile({
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

  factory HighlightedFile.fromMap(Map<String, dynamic> map) {
    return HighlightedFile(
      path: (map['path'] as String).input(),
      sections: map['sections'] == null ? null : ((map['sections'] as List).cast<String>()).input(),
      visited: map['visited'] == null ? null : (map['visited'] as bool).input(),
    );
  }
}


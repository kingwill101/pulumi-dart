// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information of a highlighted file that user should pay attention to.
class HighlightedFileResponse {
  /// The path of the highlighted file.
  final pulumi.Input<String> path;
  /// The name of sections to highlight.
  final pulumi.Input<List<String>>? sections;
  /// A flag to save whether this file is viewed by user.
  final pulumi.Input<bool>? visited;

  /// Creates a new [HighlightedFileResponse].
  /// [path] The path of the highlighted file.
  /// [sections] The name of sections to highlight.
  /// [visited] A flag to save whether this file is viewed by user.
  const HighlightedFileResponse({
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
      path: pulumi.Input.fromValue(map['path'] as String),
      sections: (() { final guardedValue = map['sections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      visited: (() { final guardedValue = map['visited']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExternalDocumentation allows referencing an external resource for extended documentation.
class ExternalDocumentation {
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? url;

  /// Creates a new [ExternalDocumentation].
  /// [description] Optional.
  /// [url] Optional.
  ExternalDocumentation({
    this.description,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'url': ?url,
    };
  }

  factory ExternalDocumentation.fromMap(Map<String, dynamic> map) {
    return ExternalDocumentation(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}


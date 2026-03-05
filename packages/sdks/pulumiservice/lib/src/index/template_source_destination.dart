// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateSourceDestination {
  /// Destination URL that gets filled in on new project creation.
  final pulumi.Input<String>? url;

  /// Creates a new [TemplateSourceDestination].
  /// [url] Destination URL that gets filled in on new project creation.
  TemplateSourceDestination({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory TemplateSourceDestination.fromMap(Map<String, dynamic> map) {
    return TemplateSourceDestination(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


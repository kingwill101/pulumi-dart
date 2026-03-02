// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WidgetConfigUiBrandingLogo {
  /// Image URL.
  final pulumi.Input<String>? url;

  /// Creates a new [WidgetConfigUiBrandingLogo].
  /// [url] Image URL.
  WidgetConfigUiBrandingLogo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory WidgetConfigUiBrandingLogo.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiBrandingLogo(
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}


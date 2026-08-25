// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionResizeRequestStatusErrorErrorErrorDetailHelpLink {
  /// An optional description of this resize-request.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// The URL of the link.
  final pulumi.Input<String?>? url;

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetailHelpLink].
  /// [description] An optional description of this resize-request.
  /// [url] (Output)
  const RegionResizeRequestStatusErrorErrorErrorDetailHelpLink({
    this.description,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'url': ?url,
    };
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetailHelpLink.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailHelpLink(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

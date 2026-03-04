// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink {
  /// An optional description of this resize-request.
  final pulumi.Input<String>? description;

  /// (Output)
  /// The URL of the link.
  final pulumi.Input<String>? url;

  /// Creates a new [ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink].
  /// [description] An optional description of this resize-request.
  /// [url] (Output)
  ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink({
    this.description,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'url': ?url};
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

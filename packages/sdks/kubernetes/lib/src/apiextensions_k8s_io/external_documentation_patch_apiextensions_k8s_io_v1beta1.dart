// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExternalDocumentation allows referencing an external resource for extended documentation.
class ExternalDocumentationPatchApiextensionsK8sIoV1beta1 {
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? url;

  /// Creates a new [ExternalDocumentationPatchApiextensionsK8sIoV1beta1].
  /// [description] Optional.
  /// [url] Optional.
  ExternalDocumentationPatchApiextensionsK8sIoV1beta1({
    this.description,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'url': ?url};
  }

  factory ExternalDocumentationPatchApiextensionsK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExternalDocumentationPatchApiextensionsK8sIoV1beta1(
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

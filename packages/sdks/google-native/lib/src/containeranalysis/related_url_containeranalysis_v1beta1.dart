// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for any related URL information.
class RelatedUrlContaineranalysisV1beta1 {
  /// Label to describe usage of the URL.
  final pulumi.Input<String>? label;
  /// Specific URL associated with the resource.
  final pulumi.Input<String>? url;

  /// Creates a new [RelatedUrlContaineranalysisV1beta1].
  /// [label] Label to describe usage of the URL.
  /// [url] Specific URL associated with the resource.
  const RelatedUrlContaineranalysisV1beta1({
    this.label,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'url': ?url,
    };
  }

  factory RelatedUrlContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RelatedUrlContaineranalysisV1beta1(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


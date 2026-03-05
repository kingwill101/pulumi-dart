// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for any related URL information.
class RelatedUrlResponseContaineranalysisV1beta1 {
  /// Label to describe usage of the URL.
  final pulumi.Input<String> label;
  /// Specific URL associated with the resource.
  final pulumi.Input<String> url;

  /// Creates a new [RelatedUrlResponseContaineranalysisV1beta1].
  /// [label] Label to describe usage of the URL.
  /// [url] Specific URL associated with the resource.
  RelatedUrlResponseContaineranalysisV1beta1({
    required this.label,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'url': url,
    };
  }

  factory RelatedUrlResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RelatedUrlResponseContaineranalysisV1beta1(
      label: pulumi.Input.fromValue(map['label'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}


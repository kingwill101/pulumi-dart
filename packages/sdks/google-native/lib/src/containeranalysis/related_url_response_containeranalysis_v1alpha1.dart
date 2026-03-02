// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for any related URL information
class RelatedUrlResponseContaineranalysisV1alpha1 {
  /// Label to describe usage of the URL
  final pulumi.Input<String> label;
  /// Specific URL to associate with the note
  final pulumi.Input<String> url;

  /// Creates a new [RelatedUrlResponseContaineranalysisV1alpha1].
  /// [label] Label to describe usage of the URL
  /// [url] Specific URL to associate with the note
  RelatedUrlResponseContaineranalysisV1alpha1({
    required this.label,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'url': url,
    };
  }

  factory RelatedUrlResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return RelatedUrlResponseContaineranalysisV1alpha1(
      label: (map['label'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}


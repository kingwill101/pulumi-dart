// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a name-pair value for a single label.
class EndpointMatcherMetadataLabelMatcherMetadataLabels {
  /// Label name presented as key in xDS Node Metadata.
  final pulumi.Input<String> labelName;

  /// Label value presented as value corresponding to the above key, in xDS Node Metadata.
  final pulumi.Input<String> labelValue;

  /// Creates a new [EndpointMatcherMetadataLabelMatcherMetadataLabels].
  /// [labelName] Label name presented as key in xDS Node Metadata.
  /// [labelValue] Label value presented as value corresponding to the above key, in xDS Node Metadata.
  EndpointMatcherMetadataLabelMatcherMetadataLabels({
    required this.labelName,
    required this.labelValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labelName': labelName, 'labelValue': labelValue};
  }

  factory EndpointMatcherMetadataLabelMatcherMetadataLabels.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointMatcherMetadataLabelMatcherMetadataLabels(
      labelName: pulumi.Input.fromValue(map['labelName'] as String),
      labelValue: pulumi.Input.fromValue(map['labelValue'] as String),
    );
  }
}

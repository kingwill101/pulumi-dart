// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel {
  /// Required. Label name presented as key in xDS Node Metadata.
  final pulumi.Input<String> labelName;
  /// Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.
  final pulumi.Input<String> labelValue;

  /// Creates a new [EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel].
  /// [labelName] Required. Label name presented as key in xDS Node Metadata.
  /// [labelValue] Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.
  EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel({
    required this.labelName,
    required this.labelValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelName': labelName,
      'labelValue': labelValue,
    };
  }

  factory EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel(
      labelName: (map['labelName'] as String).input(),
      labelValue: (map['labelValue'] as String).input(),
    );
  }
}


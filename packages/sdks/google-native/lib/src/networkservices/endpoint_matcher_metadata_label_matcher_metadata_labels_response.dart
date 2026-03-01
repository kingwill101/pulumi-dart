// ignore_for_file: unused_element, unnecessary_cast


/// Defines a name-pair value for a single label.
class EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse {
  /// Label name presented as key in xDS Node Metadata.
  final String labelName;
  /// Label value presented as value corresponding to the above key, in xDS Node Metadata.
  final String labelValue;

  /// Creates a new [EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse].
  /// [labelName] Label name presented as key in xDS Node Metadata.
  /// [labelValue] Label value presented as value corresponding to the above key, in xDS Node Metadata.
  EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse({
    required this.labelName,
    required this.labelValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelName': labelName,
      'labelValue': labelValue,
    };
  }

  factory EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse.fromMap(Map<String, dynamic> map) {
    return EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse(
      labelName: map['labelName'] as String,
      labelValue: map['labelValue'] as String,
    );
  }
}


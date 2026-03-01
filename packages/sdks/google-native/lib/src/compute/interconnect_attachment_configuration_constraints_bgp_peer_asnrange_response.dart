// ignore_for_file: unused_element, unnecessary_cast


class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse {
  final int max;
  final int min;

  /// Creates a new [InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse].
  /// [max] Required.
  /// [min] Required.
  InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponse(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}


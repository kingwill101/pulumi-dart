// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta {
  final pulumi.Input<int> max;
  final pulumi.Input<int> min;

  /// Creates a new [InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta].
  /// [max] Required.
  /// [min] Required.
  const InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeBeta(
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}

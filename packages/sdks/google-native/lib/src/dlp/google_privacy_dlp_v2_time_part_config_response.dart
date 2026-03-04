// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a portion of the value.
class GooglePrivacyDlpV2TimePartConfigResponse {
  /// The part of the time to keep.
  final pulumi.Input<String> partToExtract;

  /// Creates a new [GooglePrivacyDlpV2TimePartConfigResponse].
  /// [partToExtract] The part of the time to keep.
  GooglePrivacyDlpV2TimePartConfigResponse({required this.partToExtract});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'partToExtract': partToExtract};
  }

  factory GooglePrivacyDlpV2TimePartConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2TimePartConfigResponse(
      partToExtract: pulumi.Input.fromValue(map['partToExtract'] as String),
    );
  }
}

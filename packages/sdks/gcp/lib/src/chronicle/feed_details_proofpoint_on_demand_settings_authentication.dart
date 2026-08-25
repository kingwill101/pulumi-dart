// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_proofpoint_on_demand_settings_authentication_header_key_value.dart';

class FeedDetailsProofpointOnDemandSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValue>?>? headerKeyValues;

  /// Creates a new [FeedDetailsProofpointOnDemandSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsProofpointOnDemandSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsProofpointOnDemandSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsProofpointOnDemandSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

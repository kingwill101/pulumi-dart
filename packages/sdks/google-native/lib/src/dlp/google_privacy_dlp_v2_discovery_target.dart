// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_discovery_target.dart';

/// Target used to match against for Discovery.
class GooglePrivacyDlpV2DiscoveryTarget {
  /// BigQuery target for Discovery. The first target to match a table will be the one applied.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryDiscoveryTarget>? bigQueryTarget;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryTarget].
  /// [bigQueryTarget] BigQuery target for Discovery. The first target to match a table will be the one applied.
  GooglePrivacyDlpV2DiscoveryTarget({this.bigQueryTarget});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryTarget':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2BigQueryDiscoveryTarget,
            Map<String, dynamic>
          >(bigQueryTarget, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryTarget.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryTarget(
      bigQueryTarget: (() {
        final guardedValue = map['bigQueryTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2BigQueryDiscoveryTarget.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

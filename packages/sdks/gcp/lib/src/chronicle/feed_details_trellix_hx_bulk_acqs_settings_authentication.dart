// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_trellix_hx_bulk_acqs_settings_authentication_msso.dart';
import 'feed_details_trellix_hx_bulk_acqs_settings_authentication_trellix_iam.dart';

class FeedDetailsTrellixHxBulkAcqsSettingsAuthentication {
  /// Info for MssoAuthentication using a username, password, and login api
  /// endpoint.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxBulkAcqsSettingsAuthenticationMsso>? msso;
  /// Settings for TrellixIAMAuthentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxBulkAcqsSettingsAuthenticationTrellixIam>? trellixIam;

  /// Creates a new [FeedDetailsTrellixHxBulkAcqsSettingsAuthentication].
  /// [msso] Info for MssoAuthentication using a username, password, and login api
  /// [trellixIam] Settings for TrellixIAMAuthentication.
  const FeedDetailsTrellixHxBulkAcqsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msso': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxBulkAcqsSettingsAuthenticationMsso, Map<String, dynamic>>(msso, (value) => value.toMap()),
      'trellixIam': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxBulkAcqsSettingsAuthenticationTrellixIam, Map<String, dynamic>>(trellixIam, (value) => value.toMap()),
    };
  }

  factory FeedDetailsTrellixHxBulkAcqsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsTrellixHxBulkAcqsSettingsAuthentication(
      msso: (() { final guardedValue = map['msso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxBulkAcqsSettingsAuthenticationMsso.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trellixIam: (() { final guardedValue = map['trellixIam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxBulkAcqsSettingsAuthenticationTrellixIam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

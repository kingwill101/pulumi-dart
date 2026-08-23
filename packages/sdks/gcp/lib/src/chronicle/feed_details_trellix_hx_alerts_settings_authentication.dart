// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_trellix_hx_alerts_settings_authentication_msso.dart';
import 'feed_details_trellix_hx_alerts_settings_authentication_trellix_iam.dart';

class FeedDetailsTrellixHxAlertsSettingsAuthentication {
  /// Info for MssoAuthentication using a username, password, and login api
  /// endpoint.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso>? msso;
  /// Settings for TrellixIAMAuthentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam>? trellixIam;

  /// Creates a new [FeedDetailsTrellixHxAlertsSettingsAuthentication].
  /// [msso] Info for MssoAuthentication using a username, password, and login api
  /// [trellixIam] Settings for TrellixIAMAuthentication.
  const FeedDetailsTrellixHxAlertsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msso': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso, Map<String, dynamic>>(msso, (value) => value.toMap()),
      'trellixIam': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam, Map<String, dynamic>>(trellixIam, (value) => value.toMap()),
    };
  }

  factory FeedDetailsTrellixHxAlertsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsTrellixHxAlertsSettingsAuthentication(
      msso: (() { final guardedValue = map['msso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxAlertsSettingsAuthenticationMsso.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trellixIam: (() { final guardedValue = map['trellixIam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_trellix_hx_hosts_settings_authentication_msso.dart';
import 'feed_details_trellix_hx_hosts_settings_authentication_trellix_iam.dart';

class FeedDetailsTrellixHxHostsSettingsAuthentication {
  /// Info for MssoAuthentication using a username, password, and login api
  /// endpoint.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxHostsSettingsAuthenticationMsso?>? msso;
  /// Settings for TrellixIAMAuthentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxHostsSettingsAuthenticationTrellixIam?>? trellixIam;

  /// Creates a new [FeedDetailsTrellixHxHostsSettingsAuthentication].
  /// [msso] Info for MssoAuthentication using a username, password, and login api
  /// [trellixIam] Settings for TrellixIAMAuthentication.
  const FeedDetailsTrellixHxHostsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msso': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxHostsSettingsAuthenticationMsso, Map<String, dynamic>>(msso, (value) => value.toMap()),
      'trellixIam': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxHostsSettingsAuthenticationTrellixIam, Map<String, dynamic>>(trellixIam, (value) => value.toMap()),
    };
  }

  factory FeedDetailsTrellixHxHostsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsTrellixHxHostsSettingsAuthentication(
      msso: (() { final guardedValue = map['msso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxHostsSettingsAuthenticationMsso.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trellixIam: (() { final guardedValue = map['trellixIam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxHostsSettingsAuthenticationTrellixIam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

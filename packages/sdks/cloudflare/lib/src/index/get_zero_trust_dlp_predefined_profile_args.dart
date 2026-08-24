// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_predefined_profile_get_zero_trust_dlp_predefined_profile_args_doc}
/// Arguments for getZeroTrustDlpPredefinedProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_predefined_profile_get_zero_trust_dlp_predefined_profile_args_doc}
class GetZeroTrustDlpPredefinedProfileArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> profileId;

  /// Creates a new [GetZeroTrustDlpPredefinedProfileArgs].
  /// [accountId] Optional.
  /// [profileId] Required.
  const GetZeroTrustDlpPredefinedProfileArgs({
    this.accountId,
    required this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'profileId': profileId,
    };
  }

  factory GetZeroTrustDlpPredefinedProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpPredefinedProfileArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
    );
  }
}

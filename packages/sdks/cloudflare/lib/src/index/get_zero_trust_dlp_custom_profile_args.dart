// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_custom_profile_get_zero_trust_dlp_custom_profile_args_doc}
/// Arguments for getZeroTrustDlpCustomProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_custom_profile_get_zero_trust_dlp_custom_profile_args_doc}
class GetZeroTrustDlpCustomProfileArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> profileId;

  /// Creates a new [GetZeroTrustDlpCustomProfileArgs].
  /// [accountId] Optional.
  /// [profileId] Required.
  const GetZeroTrustDlpCustomProfileArgs({
    this.accountId,
    required this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'profileId': profileId,
    };
  }

  factory GetZeroTrustDlpCustomProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomProfileArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
    );
  }
}

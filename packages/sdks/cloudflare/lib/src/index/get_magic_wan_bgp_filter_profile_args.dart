// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_wan_bgp_filter_profile_get_magic_wan_bgp_filter_profile_args_doc}
/// Arguments for getMagicWanBgpFilterProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_wan_bgp_filter_profile_get_magic_wan_bgp_filter_profile_args_doc}
class GetMagicWanBgpFilterProfileArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Identifier
  final pulumi.Input<String> profileId;

  /// Creates a new [GetMagicWanBgpFilterProfileArgs].
  /// [accountId] Identifier
  /// [profileId] Identifier
  const GetMagicWanBgpFilterProfileArgs({
    required this.accountId,
    required this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'profileId': profileId,
    };
  }

  factory GetMagicWanBgpFilterProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicWanBgpFilterProfileArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
    );
  }
}

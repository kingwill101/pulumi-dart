// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_wan_bgp_filter_profiles_get_magic_wan_bgp_filter_profiles_args_doc}
/// Arguments for getMagicWanBgpFilterProfiles.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_wan_bgp_filter_profiles_get_magic_wan_bgp_filter_profiles_args_doc}
class GetMagicWanBgpFilterProfilesArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetMagicWanBgpFilterProfilesArgs].
  /// [accountId] Identifier
  /// [maxItems] Max items to fetch, default: 1000
  const GetMagicWanBgpFilterProfilesArgs({
    required this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetMagicWanBgpFilterProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicWanBgpFilterProfilesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

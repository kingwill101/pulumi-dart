// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_entry_pattern.dart';

/// {@template pulumi_index_zero_trust_dlp_entry_zero_trust_dlp_entry_args_doc}
/// The set of arguments for ZeroTrustDlpEntry.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_entry_zero_trust_dlp_entry_args_doc}
class ZeroTrustDlpEntryArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> name;
  final pulumi.Input<ZeroTrustDlpEntryPattern> pattern;
  final pulumi.Input<String?>? profileId;
  /// Available values: "custom", "predefined", "integration".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZeroTrustDlpEntryArgs].
  /// [accountId] Required.
  /// [description] Optional.
  /// [enabled] Required.
  /// [name] Required.
  /// [pattern] Required.
  /// [profileId] Optional.
  /// [type] Available values: "custom", "predefined", "integration".
  const ZeroTrustDlpEntryArgs({
    required this.accountId,
    this.description,
    required this.enabled,
    required this.name,
    required this.pattern,
    this.profileId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'enabled': enabled,
      'name': name,
      'pattern': pulumi.Input.mapInputValue<ZeroTrustDlpEntryPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
      'profileId': ?profileId,
      'type': ?type,
    };
  }

  factory ZeroTrustDlpEntryArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpEntryArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      pattern: pulumi.Input.fromValue(ZeroTrustDlpEntryPattern.fromMap((map['pattern']! as Map).cast<String, dynamic>())),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

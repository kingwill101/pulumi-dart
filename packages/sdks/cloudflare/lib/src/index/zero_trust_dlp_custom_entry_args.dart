// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_custom_entry_pattern.dart';

/// {@template pulumi_index_zero_trust_dlp_custom_entry_zero_trust_dlp_custom_entry_args_doc}
/// The set of arguments for ZeroTrustDlpCustomEntry.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_custom_entry_zero_trust_dlp_custom_entry_args_doc}
class ZeroTrustDlpCustomEntryArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> name;
  final pulumi.Input<ZeroTrustDlpCustomEntryPattern> pattern;
  final pulumi.Input<String?>? profileId;
  /// Validators the new entry should reference, by id, at most 10.
  final pulumi.Input<List<String>?>? validatorIds;

  /// Creates a new [ZeroTrustDlpCustomEntryArgs].
  /// [accountId] Required.
  /// [description] Optional.
  /// [enabled] Required.
  /// [name] Required.
  /// [pattern] Required.
  /// [profileId] Optional.
  /// [validatorIds] Validators the new entry should reference, by id, at most 10.
  const ZeroTrustDlpCustomEntryArgs({
    required this.accountId,
    this.description,
    required this.enabled,
    required this.name,
    required this.pattern,
    this.profileId,
    this.validatorIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'enabled': enabled,
      'name': name,
      'pattern': pulumi.Input.mapInputValue<ZeroTrustDlpCustomEntryPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
      'profileId': ?profileId,
      'validatorIds': ?validatorIds,
    };
  }

  factory ZeroTrustDlpCustomEntryArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomEntryArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      pattern: pulumi.Input.fromValue(ZeroTrustDlpCustomEntryPattern.fromMap((map['pattern']! as Map).cast<String, dynamic>())),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validatorIds: (() { final guardedValue = map['validatorIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

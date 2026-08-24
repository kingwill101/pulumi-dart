// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_logpush_ownership_challenge_logpush_ownership_challenge_args_doc}
/// The set of arguments for LogpushOwnershipChallenge.
/// {@endtemplate}
/// {@macro pulumi_index_logpush_ownership_challenge_logpush_ownership_challenge_args_doc}
class LogpushOwnershipChallengeArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  final pulumi.Input<String> destinationConf;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LogpushOwnershipChallengeArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [destinationConf] Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const LogpushOwnershipChallengeArgs({
    this.accountId,
    required this.destinationConf,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'destinationConf': destinationConf,
      'zoneId': ?zoneId,
    };
  }

  factory LogpushOwnershipChallengeArgs.fromMap(Map<String, dynamic> map) {
    return LogpushOwnershipChallengeArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConf: pulumi.Input.fromValue(map['destinationConf'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

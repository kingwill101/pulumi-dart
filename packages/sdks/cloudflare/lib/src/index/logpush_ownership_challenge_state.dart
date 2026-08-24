// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogpushOwnershipChallenge resources.
class LogpushOwnershipChallengeState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  final pulumi.Input<String?>? destinationConf;
  final pulumi.Input<String?>? filename;
  final pulumi.Input<String?>? message;
  final pulumi.Input<bool?>? valid;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LogpushOwnershipChallengeState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [destinationConf] Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  /// [filename] Optional.
  /// [message] Optional.
  /// [valid] Optional.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const LogpushOwnershipChallengeState({
    this.accountId,
    this.destinationConf,
    this.filename,
    this.message,
    this.valid,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'destinationConf': ?destinationConf,
      'filename': ?filename,
      'message': ?message,
      'valid': ?valid,
      'zoneId': ?zoneId,
    };
  }

  factory LogpushOwnershipChallengeState.fromMap(Map<String, dynamic> map) {
    return LogpushOwnershipChallengeState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConf: (() { final guardedValue = map['destinationConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valid: (() { final guardedValue = map['valid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

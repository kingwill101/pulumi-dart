// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'money_response.dart';

class CommitmentResourceStatusCancellationInformationResponse {
  /// An optional amount of CUDs canceled so far in the last 365 days.
  final pulumi.Input<MoneyResponse> canceledCommitment;

  /// An optional last update time of canceled_commitment. RFC3339 text format.
  final pulumi.Input<String> canceledCommitmentLastUpdatedTimestamp;

  /// An optional,the cancellation cap for how much commitments can be canceled in a rolling 365 per billing account.
  final pulumi.Input<MoneyResponse> cancellationCap;

  /// An optional, cancellation fee.
  final pulumi.Input<MoneyResponse> cancellationFee;

  /// An optional, cancellation fee expiration time. RFC3339 text format.
  final pulumi.Input<String> cancellationFeeExpirationTimestamp;

  /// Creates a new [CommitmentResourceStatusCancellationInformationResponse].
  /// [canceledCommitment] An optional amount of CUDs canceled so far in the last 365 days.
  /// [canceledCommitmentLastUpdatedTimestamp] An optional last update time of canceled_commitment. RFC3339 text format.
  /// [cancellationCap] An optional,the cancellation cap for how much commitments can be canceled in a rolling 365 per billing account.
  /// [cancellationFee] An optional, cancellation fee.
  /// [cancellationFeeExpirationTimestamp] An optional, cancellation fee expiration time. RFC3339 text format.
  CommitmentResourceStatusCancellationInformationResponse({
    required this.canceledCommitment,
    required this.canceledCommitmentLastUpdatedTimestamp,
    required this.cancellationCap,
    required this.cancellationFee,
    required this.cancellationFeeExpirationTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canceledCommitment':
          pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(
            canceledCommitment,
            (value) => value.toMap(),
          ),
      'canceledCommitmentLastUpdatedTimestamp':
          canceledCommitmentLastUpdatedTimestamp,
      'cancellationCap':
          pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(
            cancellationCap,
            (value) => value.toMap(),
          ),
      'cancellationFee':
          pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(
            cancellationFee,
            (value) => value.toMap(),
          ),
      'cancellationFeeExpirationTimestamp': cancellationFeeExpirationTimestamp,
    };
  }

  factory CommitmentResourceStatusCancellationInformationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CommitmentResourceStatusCancellationInformationResponse(
      canceledCommitment: pulumi.Input.fromValue(
        MoneyResponse.fromMap(
          (map['canceledCommitment']! as Map).cast<String, dynamic>(),
        ),
      ),
      canceledCommitmentLastUpdatedTimestamp: pulumi.Input.fromValue(
        map['canceledCommitmentLastUpdatedTimestamp'] as String,
      ),
      cancellationCap: pulumi.Input.fromValue(
        MoneyResponse.fromMap(
          (map['cancellationCap']! as Map).cast<String, dynamic>(),
        ),
      ),
      cancellationFee: pulumi.Input.fromValue(
        MoneyResponse.fromMap(
          (map['cancellationFee']! as Map).cast<String, dynamic>(),
        ),
      ),
      cancellationFeeExpirationTimestamp: pulumi.Input.fromValue(
        map['cancellationFeeExpirationTimestamp'] as String,
      ),
    );
  }
}

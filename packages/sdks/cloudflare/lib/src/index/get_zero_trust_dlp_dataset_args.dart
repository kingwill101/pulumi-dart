// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_dataset_get_zero_trust_dlp_dataset_args_doc}
/// Arguments for getZeroTrustDlpDataset.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_dataset_get_zero_trust_dlp_dataset_args_doc}
class GetZeroTrustDlpDatasetArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> datasetId;

  /// Creates a new [GetZeroTrustDlpDatasetArgs].
  /// [accountId] Optional.
  /// [datasetId] Required.
  const GetZeroTrustDlpDatasetArgs({
    this.accountId,
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'datasetId': datasetId,
    };
  }

  factory GetZeroTrustDlpDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDatasetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
    );
  }
}

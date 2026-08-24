// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_data_class_get_zero_trust_dlp_data_class_args_doc}
/// Arguments for getZeroTrustDlpDataClass.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_data_class_get_zero_trust_dlp_data_class_args_doc}
class GetZeroTrustDlpDataClassArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> dataClassId;

  /// Creates a new [GetZeroTrustDlpDataClassArgs].
  /// [accountId] Required.
  /// [dataClassId] Required.
  const GetZeroTrustDlpDataClassArgs({
    required this.accountId,
    required this.dataClassId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'dataClassId': dataClassId,
    };
  }

  factory GetZeroTrustDlpDataClassArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataClassArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      dataClassId: pulumi.Input.fromValue(map['dataClassId'] as String),
    );
  }
}

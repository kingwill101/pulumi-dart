// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_data_classes_get_zero_trust_dlp_data_classes_args_doc}
/// Arguments for getZeroTrustDlpDataClasses.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_data_classes_get_zero_trust_dlp_data_classes_args_doc}
class GetZeroTrustDlpDataClassesArgs {
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetZeroTrustDlpDataClassesArgs].
  /// [accountId] Required.
  /// [maxItems] Max items to fetch, default: 1000
  const GetZeroTrustDlpDataClassesArgs({
    required this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetZeroTrustDlpDataClassesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataClassesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

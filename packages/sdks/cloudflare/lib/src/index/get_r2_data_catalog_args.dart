// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_r2_data_catalog_get_r2_data_catalog_args_doc}
/// Arguments for getR2DataCatalog.
/// {@endtemplate}
/// {@macro pulumi_index_get_r2_data_catalog_get_r2_data_catalog_args_doc}
class GetR2DataCatalogArgs {
  /// Use this to identify the account.
  final pulumi.Input<String?>? accountId;
  /// Specifies the R2 bucket name.
  final pulumi.Input<String> bucketName;

  /// Creates a new [GetR2DataCatalogArgs].
  /// [accountId] Use this to identify the account.
  /// [bucketName] Specifies the R2 bucket name.
  const GetR2DataCatalogArgs({
    this.accountId,
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': bucketName,
    };
  }

  factory GetR2DataCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetR2DataCatalogArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_r2_data_catalog_r2_data_catalog_args_doc}
/// The set of arguments for R2DataCatalog.
/// {@endtemplate}
/// {@macro pulumi_index_r2_data_catalog_r2_data_catalog_args_doc}
class R2DataCatalogArgs {
  /// Use this to identify the account.
  final pulumi.Input<String> accountId;
  /// Specifies the R2 bucket name.
  final pulumi.Input<String> bucketName;

  /// Creates a new [R2DataCatalogArgs].
  /// [accountId] Use this to identify the account.
  /// [bucketName] Specifies the R2 bucket name.
  const R2DataCatalogArgs({
    required this.accountId,
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
    };
  }

  factory R2DataCatalogArgs.fromMap(Map<String, dynamic> map) {
    return R2DataCatalogArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_data_catalog_credential.dart';

/// {@template pulumi_index_r2_data_catalog_r2_data_catalog_args_doc}
/// The set of arguments for R2DataCatalog.
/// {@endtemplate}
/// {@macro pulumi_index_r2_data_catalog_r2_data_catalog_args_doc}
class R2DataCatalogArgs {
  /// Use this to identify the account.
  final pulumi.Input<String> accountId;
  /// Specifies the R2 bucket name.
  final pulumi.Input<String> bucketName;
  /// Contains request to store catalog credentials.
  final pulumi.Input<R2DataCatalogCredential?>? credential;

  /// Creates a new [R2DataCatalogArgs].
  /// [accountId] Use this to identify the account.
  /// [bucketName] Specifies the R2 bucket name.
  /// [credential] Contains request to store catalog credentials.
  const R2DataCatalogArgs({
    required this.accountId,
    required this.bucketName,
    this.credential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'credential': ?pulumi.Input.mapOptionalInputValue<R2DataCatalogCredential, Map<String, dynamic>>(credential, (value) => value.toMap()),
    };
  }

  factory R2DataCatalogArgs.fromMap(Map<String, dynamic> map) {
    return R2DataCatalogArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2DataCatalogCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

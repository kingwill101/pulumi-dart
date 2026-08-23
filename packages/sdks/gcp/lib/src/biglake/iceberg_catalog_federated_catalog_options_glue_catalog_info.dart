// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo {
  /// The AWS region where the Glue catalog is located.
  final pulumi.Input<String> awsRegion;
  /// The ARN of the AWS IAM role to assume for accessing the Glue catalog.
  final pulumi.Input<String> awsRoleArn;
  /// The AWS Glue warehouse identifier (account ID or S3 table bucket).
  final pulumi.Input<String> warehouse;

  /// Creates a new [IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo].
  /// [awsRegion] The AWS region where the Glue catalog is located.
  /// [awsRoleArn] The ARN of the AWS IAM role to assume for accessing the Glue catalog.
  /// [warehouse] The AWS Glue warehouse identifier (account ID or S3 table bucket).
  const IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo({
    required this.awsRegion,
    required this.awsRoleArn,
    required this.warehouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': awsRegion,
      'awsRoleArn': awsRoleArn,
      'warehouse': warehouse,
    };
  }

  factory IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo(
      awsRegion: pulumi.Input.fromValue(map['awsRegion'] as String),
      awsRoleArn: pulumi.Input.fromValue(map['awsRoleArn'] as String),
      warehouse: pulumi.Input.fromValue(map['warehouse'] as String),
    );
  }
}

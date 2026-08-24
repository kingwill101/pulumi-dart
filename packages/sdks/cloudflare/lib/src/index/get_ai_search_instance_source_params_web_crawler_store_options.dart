// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions {
  final pulumi.Input<String> r2Jurisdiction;
  final pulumi.Input<String> storageId;
  /// Available values: "r2".
  final pulumi.Input<String> storageType;

  /// Creates a new [GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions].
  /// [r2Jurisdiction] Required.
  /// [storageId] Required.
  /// [storageType] Available values: "r2".
  const GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions({
    required this.r2Jurisdiction,
    required this.storageId,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'r2Jurisdiction': r2Jurisdiction,
      'storageId': storageId,
      'storageType': storageType,
    };
  }

  factory GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions(
      r2Jurisdiction: pulumi.Input.fromValue(map['r2Jurisdiction'] as String),
      storageId: pulumi.Input.fromValue(map['storageId'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}

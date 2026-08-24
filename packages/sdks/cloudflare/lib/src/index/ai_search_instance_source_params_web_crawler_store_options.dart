// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceSourceParamsWebCrawlerStoreOptions {
  final pulumi.Input<String?>? r2Jurisdiction;
  final pulumi.Input<String> storageId;
  /// Available values: "r2".
  final pulumi.Input<String?>? storageType;

  /// Creates a new [AiSearchInstanceSourceParamsWebCrawlerStoreOptions].
  /// [r2Jurisdiction] Optional.
  /// [storageId] Required.
  /// [storageType] Available values: "r2".
  const AiSearchInstanceSourceParamsWebCrawlerStoreOptions({
    this.r2Jurisdiction,
    required this.storageId,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'r2Jurisdiction': ?r2Jurisdiction,
      'storageId': storageId,
      'storageType': ?storageType,
    };
  }

  factory AiSearchInstanceSourceParamsWebCrawlerStoreOptions.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceSourceParamsWebCrawlerStoreOptions(
      r2Jurisdiction: (() { final guardedValue = map['r2Jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageId: pulumi.Input.fromValue(map['storageId'] as String),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

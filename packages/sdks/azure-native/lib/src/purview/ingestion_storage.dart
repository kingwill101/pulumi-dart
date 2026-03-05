// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingestion Storage Account Info
class IngestionStorage {
  /// Gets or sets the public network access setting
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [IngestionStorage].
  /// [publicNetworkAccess] Gets or sets the public network access setting
  IngestionStorage({
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory IngestionStorage.fromMap(Map<String, dynamic> map) {
    return IngestionStorage(
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


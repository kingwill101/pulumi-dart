// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for the Cosmos DB database backing the service.
class ServiceCosmosDbConfigurationInfoResponse {
  /// The URI of the customer-managed key for the backing database.
  final pulumi.Input<String?>? keyVaultKeyUri;
  /// The provisioned throughput for the backing database.
  final pulumi.Input<double?>? offerThroughput;

  /// Creates a new [ServiceCosmosDbConfigurationInfoResponse].
  /// [keyVaultKeyUri] The URI of the customer-managed key for the backing database.
  /// [offerThroughput] The provisioned throughput for the backing database.
  const ServiceCosmosDbConfigurationInfoResponse({
    this.keyVaultKeyUri,
    this.offerThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyUri': ?keyVaultKeyUri,
      'offerThroughput': ?offerThroughput,
    };
  }

  factory ServiceCosmosDbConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceCosmosDbConfigurationInfoResponse(
      keyVaultKeyUri: (() { final guardedValue = map['keyVaultKeyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offerThroughput: (() { final guardedValue = map['offerThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}

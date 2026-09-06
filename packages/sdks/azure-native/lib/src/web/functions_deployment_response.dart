// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment_storage_response.dart';

/// Configuration section for the function app deployment.
class FunctionsDeploymentResponse {
  /// Storage for deployed package used by the function app.
  final pulumi.Input<FunctionsDeploymentStorageResponse?>? storage;

  /// Creates a new [FunctionsDeploymentResponse].
  /// [storage] Storage for deployed package used by the function app.
  const FunctionsDeploymentResponse({
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage': ?pulumi.Input.mapOptionalInputValue<FunctionsDeploymentStorageResponse, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory FunctionsDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentResponse(
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsDeploymentStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

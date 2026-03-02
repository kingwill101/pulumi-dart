// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment_response_storage.dart';

/// Configuration section for the function app deployment.
class FunctionsDeploymentResponse {
  /// Storage for deployed package used by the function app.
  final pulumi.Input<FunctionsDeploymentResponseStorage>? storage;

  /// Creates a new [FunctionsDeploymentResponse].
  /// [storage] Storage for deployed package used by the function app.
  FunctionsDeploymentResponse({
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage': ?pulumi.Input.mapOptionalInputValue<FunctionsDeploymentResponseStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory FunctionsDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentResponse(
      storage: map['storage'] == null ? null : (FunctionsDeploymentResponseStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


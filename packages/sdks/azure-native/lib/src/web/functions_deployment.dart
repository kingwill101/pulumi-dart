// ignore_for_file: unused_element, unnecessary_cast

import 'functions_deployment_storage.dart';

/// Configuration section for the function app deployment.
class FunctionsDeployment {
  /// Storage for deployed package used by the function app.
  final FunctionsDeploymentStorage? storage;

  /// Creates a new [FunctionsDeployment].
  /// [storage] Storage for deployed package used by the function app.
  FunctionsDeployment({
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage': ?storage == null ? null : storage!.toMap(),
    };
  }

  factory FunctionsDeployment.fromMap(Map<String, dynamic> map) {
    return FunctionsDeployment(
      storage: map['storage'] == null ? null : FunctionsDeploymentStorage.fromMap((map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}


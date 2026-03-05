// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment_storage.dart';

/// Configuration section for the function app deployment.
class FunctionsDeployment {
  /// Storage for deployed package used by the function app.
  final pulumi.Input<FunctionsDeploymentStorage>? storage;

  /// Creates a new [FunctionsDeployment].
  /// [storage] Storage for deployed package used by the function app.
  FunctionsDeployment({
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage': ?pulumi.Input.mapOptionalInputValue<FunctionsDeploymentStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory FunctionsDeployment.fromMap(Map<String, dynamic> map) {
    return FunctionsDeployment(
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsDeploymentStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


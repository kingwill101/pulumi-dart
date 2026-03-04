// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_environment_status_response.dart';
import 'warm_storage_environment_status_response.dart';

/// An object that represents the status of the environment, and its internal state in the Time Series Insights service.
class EnvironmentStatusResponse {
  /// An object that represents the status of ingress on an environment.
  final pulumi.Input<IngressEnvironmentStatusResponse> ingress;

  /// An object that represents the status of warm storage on an environment.
  final pulumi.Input<WarmStorageEnvironmentStatusResponse> warmStorage;

  /// Creates a new [EnvironmentStatusResponse].
  /// [ingress] An object that represents the status of ingress on an environment.
  /// [warmStorage] An object that represents the status of warm storage on an environment.
  EnvironmentStatusResponse({required this.ingress, required this.warmStorage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingress':
          pulumi.Input.mapInputValue<
            IngressEnvironmentStatusResponse,
            Map<String, dynamic>
          >(ingress, (value) => value.toMap()),
      'warmStorage':
          pulumi.Input.mapInputValue<
            WarmStorageEnvironmentStatusResponse,
            Map<String, dynamic>
          >(warmStorage, (value) => value.toMap()),
    };
  }

  factory EnvironmentStatusResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentStatusResponse(
      ingress: pulumi.Input.fromValue(
        IngressEnvironmentStatusResponse.fromMap(
          (map['ingress']! as Map).cast<String, dynamic>(),
        ),
      ),
      warmStorage: pulumi.Input.fromValue(
        WarmStorageEnvironmentStatusResponse.fromMap(
          (map['warmStorage']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

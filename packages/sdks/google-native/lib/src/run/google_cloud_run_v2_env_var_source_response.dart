// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_secret_key_selector_response.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2EnvVarSourceResponse {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final pulumi.Input<GoogleCloudRunV2SecretKeySelectorResponse> secretKeyRef;

  /// Creates a new [GoogleCloudRunV2EnvVarSourceResponse].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  GoogleCloudRunV2EnvVarSourceResponse({required this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef':
          pulumi.Input.mapInputValue<
            GoogleCloudRunV2SecretKeySelectorResponse,
            Map<String, dynamic>
          >(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2EnvVarSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2EnvVarSourceResponse(
      secretKeyRef: pulumi.Input.fromValue(
        GoogleCloudRunV2SecretKeySelectorResponse.fromMap(
          (map['secretKeyRef']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

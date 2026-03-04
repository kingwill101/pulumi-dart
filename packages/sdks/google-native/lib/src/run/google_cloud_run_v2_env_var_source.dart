// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_secret_key_selector.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2EnvVarSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final pulumi.Input<GoogleCloudRunV2SecretKeySelector>? secretKeyRef;

  /// Creates a new [GoogleCloudRunV2EnvVarSource].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  GoogleCloudRunV2EnvVarSource({this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRunV2SecretKeySelector,
            Map<String, dynamic>
          >(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2EnvVarSource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2EnvVarSource(
      secretKeyRef: (() {
        final guardedValue = map['secretKeyRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRunV2SecretKeySelector.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

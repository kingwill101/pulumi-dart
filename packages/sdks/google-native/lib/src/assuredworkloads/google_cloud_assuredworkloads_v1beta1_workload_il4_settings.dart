// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_assuredworkloads_v1beta1_workload_kmssettings.dart';

/// Settings specific to resources needed for IL4.
class GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings {
  /// Input only. Immutable. Settings used to create a CMEK crypto key.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings>? kmsSettings;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings].
  /// [kmsSettings] Input only. Immutable. Settings used to create a CMEK crypto key.
  const GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings({
    this.kmsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings, Map<String, dynamic>>(kmsSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(
      kmsSettings: (() { final guardedValue = map['kmsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


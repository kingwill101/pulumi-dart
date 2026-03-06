// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_assuredworkloads_v1beta1_workload_kmssettings_response.dart';

/// Settings specific to resources needed for FedRAMP High.
class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettingsResponse {
  /// Input only. Immutable. Settings used to create a CMEK crypto key.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettingsResponse> kmsSettings;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettingsResponse].
  /// [kmsSettings] Input only. Immutable. Settings used to create a CMEK crypto key.
  const GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettingsResponse({
    required this.kmsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsSettings': pulumi.Input.mapInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettingsResponse, Map<String, dynamic>>(kmsSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettingsResponse(
      kmsSettings: pulumi.Input.fromValue(GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettingsResponse.fromMap((map['kmsSettings']! as Map).cast<String, dynamic>())),
    );
  }
}


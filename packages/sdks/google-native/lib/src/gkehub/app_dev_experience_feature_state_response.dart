// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureStateResponse {
  /// Status of subcomponent that detects configured Service Mesh resources.
  final pulumi.Input<StatusResponse> networkingInstallSucceeded;

  /// Creates a new [AppDevExperienceFeatureStateResponse].
  /// [networkingInstallSucceeded] Status of subcomponent that detects configured Service Mesh resources.
  AppDevExperienceFeatureStateResponse({
    required this.networkingInstallSucceeded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkingInstallSucceeded':
          pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(
            networkingInstallSucceeded,
            (value) => value.toMap(),
          ),
    };
  }

  factory AppDevExperienceFeatureStateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppDevExperienceFeatureStateResponse(
      networkingInstallSucceeded: pulumi.Input.fromValue(
        StatusResponse.fromMap(
          (map['networkingInstallSucceeded']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

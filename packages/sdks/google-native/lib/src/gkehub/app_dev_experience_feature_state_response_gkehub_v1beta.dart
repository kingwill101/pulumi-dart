// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response_gkehub_v1beta.dart';

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureStateResponseGkehubV1beta {
  /// Status of subcomponent that detects configured Service Mesh resources.
  final pulumi.Input<StatusResponseGkehubV1beta> networkingInstallSucceeded;

  /// Creates a new [AppDevExperienceFeatureStateResponseGkehubV1beta].
  /// [networkingInstallSucceeded] Status of subcomponent that detects configured Service Mesh resources.
  AppDevExperienceFeatureStateResponseGkehubV1beta({
    required this.networkingInstallSucceeded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkingInstallSucceeded': pulumi.Input.mapInputValue<StatusResponseGkehubV1beta, Map<String, dynamic>>(networkingInstallSucceeded, (value) => value.toMap()),
    };
  }

  factory AppDevExperienceFeatureStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return AppDevExperienceFeatureStateResponseGkehubV1beta(
      networkingInstallSucceeded: pulumi.Input.fromValue(StatusResponseGkehubV1beta.fromMap((map['networkingInstallSucceeded']! as Map).cast<String, dynamic>())),
    );
  }
}


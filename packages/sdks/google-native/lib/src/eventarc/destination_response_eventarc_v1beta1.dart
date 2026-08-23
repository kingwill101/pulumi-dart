// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_service_response.dart';

/// Represents a target of an invocation over HTTP.
class DestinationResponseEventarcV1beta1 {
  /// Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  final pulumi.Input<CloudRunServiceResponse> cloudRunService;

  /// Creates a new [DestinationResponseEventarcV1beta1].
  /// [cloudRunService] Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  const DestinationResponseEventarcV1beta1({
    required this.cloudRunService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunService': pulumi.Input.mapInputValue<CloudRunServiceResponse, Map<String, dynamic>>(cloudRunService, (value) => value.toMap()),
    };
  }

  factory DestinationResponseEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return DestinationResponseEventarcV1beta1(
      cloudRunService: pulumi.Input.fromValue(CloudRunServiceResponse.fromMap((map['cloudRunService']! as Map).cast<String, dynamic>())),
    );
  }
}

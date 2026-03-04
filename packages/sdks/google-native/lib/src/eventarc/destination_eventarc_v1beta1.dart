// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_service.dart';

/// Represents a target of an invocation over HTTP.
class DestinationEventarcV1beta1 {
  /// Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  final pulumi.Input<CloudRunService>? cloudRunService;

  /// Creates a new [DestinationEventarcV1beta1].
  /// [cloudRunService] Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  DestinationEventarcV1beta1({this.cloudRunService});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunService':
          ?pulumi.Input.mapOptionalInputValue<
            CloudRunService,
            Map<String, dynamic>
          >(cloudRunService, (value) => value.toMap()),
    };
  }

  factory DestinationEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return DestinationEventarcV1beta1(
      cloudRunService: (() {
        final guardedValue = map['cloudRunService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudRunService.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

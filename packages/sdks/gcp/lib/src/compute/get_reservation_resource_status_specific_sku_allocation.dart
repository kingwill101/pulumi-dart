// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationResourceStatusSpecificSkuAllocation {
  /// ID of the instance template used to populate reservation properties.
  final pulumi.Input<String> sourceInstanceTemplateId;
  /// Per service utilization breakdown. The Key is the Google Cloud managed service name.
  final pulumi.Input<Map<String, String>> utilizations;

  /// Creates a new [GetReservationResourceStatusSpecificSkuAllocation].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate reservation properties.
  /// [utilizations] Per service utilization breakdown. The Key is the Google Cloud managed service name.
  const GetReservationResourceStatusSpecificSkuAllocation({
    required this.sourceInstanceTemplateId,
    required this.utilizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
      'utilizations': utilizations,
    };
  }

  factory GetReservationResourceStatusSpecificSkuAllocation.fromMap(Map<String, dynamic> map) {
    return GetReservationResourceStatusSpecificSkuAllocation(
      sourceInstanceTemplateId: pulumi.Input.fromValue(map['sourceInstanceTemplateId'] as String),
      utilizations: pulumi.Input.fromValue((map['utilizations'] as Map).cast<String, String>()),
    );
  }
}

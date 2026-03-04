// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationResourceStatusSpecificSkuAllocation {
  /// (Output)
  /// ID of the instance template used to populate reservation properties.
  final pulumi.Input<String>? sourceInstanceTemplateId;

  /// (Output)
  /// Per service utilization breakdown. The Key is the Google Cloud managed service name.
  final pulumi.Input<Map<String, String>>? utilizations;

  /// Creates a new [ReservationResourceStatusSpecificSkuAllocation].
  /// [sourceInstanceTemplateId] (Output)
  /// [utilizations] (Output)
  ReservationResourceStatusSpecificSkuAllocation({
    this.sourceInstanceTemplateId,
    this.utilizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': ?sourceInstanceTemplateId,
      'utilizations': ?utilizations,
    };
  }

  factory ReservationResourceStatusSpecificSkuAllocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReservationResourceStatusSpecificSkuAllocation(
      sourceInstanceTemplateId: (() {
        final guardedValue = map['sourceInstanceTemplateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      utilizations: (() {
        final guardedValue = map['utilizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

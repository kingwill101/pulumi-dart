// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto scaling settings.
class AutoscaleResponse {
  /// The slot capacity added to this reservation when autoscale happens. Will be between [0, max_slots].
  final pulumi.Input<String> currentSlots;
  /// Number of slots to be scaled when needed.
  final pulumi.Input<String> maxSlots;

  /// Creates a new [AutoscaleResponse].
  /// [currentSlots] The slot capacity added to this reservation when autoscale happens. Will be between [0, max_slots].
  /// [maxSlots] Number of slots to be scaled when needed.
  AutoscaleResponse({
    required this.currentSlots,
    required this.maxSlots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSlots': currentSlots,
      'maxSlots': maxSlots,
    };
  }

  factory AutoscaleResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleResponse(
      currentSlots: (map['currentSlots'] as String).input(),
      maxSlots: (map['maxSlots'] as String).input(),
    );
  }
}


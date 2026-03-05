// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Guaranteed tier definition.
class GuaranteedResponse {
  /// Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  final pulumi.Input<String> minDuration;
  /// Optional. Specifies the request should be scheduled on reserved capacity.
  final pulumi.Input<bool> reserved;

  /// Creates a new [GuaranteedResponse].
  /// [minDuration] Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  /// [reserved] Optional. Specifies the request should be scheduled on reserved capacity.
  GuaranteedResponse({
    required this.minDuration,
    required this.reserved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minDuration': minDuration,
      'reserved': reserved,
    };
  }

  factory GuaranteedResponse.fromMap(Map<String, dynamic> map) {
    return GuaranteedResponse(
      minDuration: pulumi.Input.fromValue(map['minDuration'] as String),
      reserved: pulumi.Input.fromValue(map['reserved'] as bool),
    );
  }
}


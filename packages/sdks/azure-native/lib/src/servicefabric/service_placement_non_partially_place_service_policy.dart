// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of placement policy for a service fabric service. Following are the possible values.
class ServicePlacementNonPartiallyPlaceServicePolicy {
  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'NonPartiallyPlaceService'.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePlacementNonPartiallyPlaceServicePolicy].
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementNonPartiallyPlaceServicePolicy({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServicePlacementNonPartiallyPlaceServicePolicy.fromMap(Map<String, dynamic> map) {
    return ServicePlacementNonPartiallyPlaceServicePolicy(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


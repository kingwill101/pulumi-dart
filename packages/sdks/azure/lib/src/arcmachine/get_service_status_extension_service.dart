// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceStatusExtensionService {
  /// The behavior of the service when the Arc-enabled machine starts up.
  final pulumi.Input<String> startupType;

  /// The current status of the service.
  final pulumi.Input<String> status;

  /// Creates a new [GetServiceStatusExtensionService].
  /// [startupType] The behavior of the service when the Arc-enabled machine starts up.
  /// [status] The current status of the service.
  GetServiceStatusExtensionService({
    required this.startupType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startupType': startupType, 'status': status};
  }

  factory GetServiceStatusExtensionService.fromMap(Map<String, dynamic> map) {
    return GetServiceStatusExtensionService(
      startupType: pulumi.Input.fromValue(map['startupType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

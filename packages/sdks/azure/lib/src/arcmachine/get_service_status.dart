// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_status_extension_service.dart';
import 'get_service_status_guest_configuration_service.dart';

class GetServiceStatus {
  /// A `extensionService` block as defined above.
  final pulumi.Input<List<GetServiceStatusExtensionService>> extensionServices;
  /// A `guestConfigurationService` block as defined above.
  final pulumi.Input<List<GetServiceStatusGuestConfigurationService>> guestConfigurationServices;

  /// Creates a new [GetServiceStatus].
  /// [extensionServices] A `extensionService` block as defined above.
  /// [guestConfigurationServices] A `guestConfigurationService` block as defined above.
  const GetServiceStatus({
    required this.extensionServices,
    required this.guestConfigurationServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionServices': pulumi.Input.mapInputValue<List<GetServiceStatusExtensionService>, List<Map<String, dynamic>>>(extensionServices, (value) => pulumi.Input.encodeList<GetServiceStatusExtensionService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guestConfigurationServices': pulumi.Input.mapInputValue<List<GetServiceStatusGuestConfigurationService>, List<Map<String, dynamic>>>(guestConfigurationServices, (value) => pulumi.Input.encodeList<GetServiceStatusGuestConfigurationService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceStatus.fromMap(Map<String, dynamic> map) {
    return GetServiceStatus(
      extensionServices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceStatusExtensionService>(map['extensionServices']!, (value) => GetServiceStatusExtensionService.fromMap((value as Map).cast<String, dynamic>()))),
      guestConfigurationServices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceStatusGuestConfigurationService>(map['guestConfigurationServices']!, (value) => GetServiceStatusGuestConfigurationService.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

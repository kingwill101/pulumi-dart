// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single flow version with specified traffic allocation.
class GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse {
  /// Whether the variant is for the control group.
  final pulumi.Input<bool> isControlGroup;
  /// Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.
  final pulumi.Input<double> trafficAllocation;
  /// The name of the flow version. Format: `projects//locations//agents//flows//versions/`.
  final pulumi.Input<String> version;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse].
  /// [isControlGroup] Whether the variant is for the control group.
  /// [trafficAllocation] Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.
  /// [version] The name of the flow version. Format: `projects//locations//agents//flows//versions/`.
  GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse({
    required this.isControlGroup,
    required this.trafficAllocation,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isControlGroup': isControlGroup,
      'trafficAllocation': trafficAllocation,
      'version': version,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse(
      isControlGroup: (map['isControlGroup'] as bool).input(),
      trafficAllocation: (map['trafficAllocation'] as double).input(),
      version: (map['version'] as String).input(),
    );
  }
}


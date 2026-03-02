// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single flow version with specified traffic allocation.
class GoogleCloudDialogflowCxV3VersionVariantsVariant {
  /// Whether the variant is for the control group.
  final pulumi.Input<bool>? isControlGroup;
  /// Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.
  final pulumi.Input<double>? trafficAllocation;
  /// The name of the flow version. Format: `projects//locations//agents//flows//versions/`.
  final pulumi.Input<String>? version;

  /// Creates a new [GoogleCloudDialogflowCxV3VersionVariantsVariant].
  /// [isControlGroup] Whether the variant is for the control group.
  /// [trafficAllocation] Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.
  /// [version] The name of the flow version. Format: `projects//locations//agents//flows//versions/`.
  GoogleCloudDialogflowCxV3VersionVariantsVariant({
    this.isControlGroup,
    this.trafficAllocation,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isControlGroup': ?isControlGroup,
      'trafficAllocation': ?trafficAllocation,
      'version': ?version,
    };
  }

  factory GoogleCloudDialogflowCxV3VersionVariantsVariant.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VersionVariantsVariant(
      isControlGroup: map['isControlGroup'] == null ? null : (map['isControlGroup'] as bool).input(),
      trafficAllocation: map['trafficAllocation'] == null ? null : (map['trafficAllocation'] as double).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}


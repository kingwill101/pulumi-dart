// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_landscape_monitor_sid_mapping.dart';

/// Gets or sets the SID groupings by landscape and Environment.
class SapLandscapeMonitorPropertiesGrouping {
  /// Gets or sets the list of landscape to SID mappings.
  final pulumi.Input<List<SapLandscapeMonitorSidMapping>>? landscape;
  /// Gets or sets the list of Sap Applications to SID mappings.
  final pulumi.Input<List<SapLandscapeMonitorSidMapping>>? sapApplication;

  /// Creates a new [SapLandscapeMonitorPropertiesGrouping].
  /// [landscape] Gets or sets the list of landscape to SID mappings.
  /// [sapApplication] Gets or sets the list of Sap Applications to SID mappings.
  SapLandscapeMonitorPropertiesGrouping({
    this.landscape,
    this.sapApplication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landscape': ?pulumi.Input.mapOptionalInputValue<List<SapLandscapeMonitorSidMapping>, List<Map<String, dynamic>>>(landscape, (value) => pulumi.Input.encodeList<SapLandscapeMonitorSidMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sapApplication': ?pulumi.Input.mapOptionalInputValue<List<SapLandscapeMonitorSidMapping>, List<Map<String, dynamic>>>(sapApplication, (value) => pulumi.Input.encodeList<SapLandscapeMonitorSidMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SapLandscapeMonitorPropertiesGrouping.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorPropertiesGrouping(
      landscape: (() { final guardedValue = map['landscape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SapLandscapeMonitorSidMapping>(guardedValue, (value) => SapLandscapeMonitorSidMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sapApplication: (() { final guardedValue = map['sapApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SapLandscapeMonitorSidMapping>(guardedValue, (value) => SapLandscapeMonitorSidMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_landscape_monitor_sid_mapping_response.dart';

/// Gets or sets the SID groupings by landscape and Environment.
class SapLandscapeMonitorPropertiesGroupingResponse {
  /// Gets or sets the list of landscape to SID mappings.
  final pulumi.Input<List<SapLandscapeMonitorSidMappingResponse>?>? landscape;
  /// Gets or sets the list of Sap Applications to SID mappings.
  final pulumi.Input<List<SapLandscapeMonitorSidMappingResponse>?>? sapApplication;

  /// Creates a new [SapLandscapeMonitorPropertiesGroupingResponse].
  /// [landscape] Gets or sets the list of landscape to SID mappings.
  /// [sapApplication] Gets or sets the list of Sap Applications to SID mappings.
  const SapLandscapeMonitorPropertiesGroupingResponse({
    this.landscape,
    this.sapApplication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landscape': ?pulumi.Input.mapOptionalInputValue<List<SapLandscapeMonitorSidMappingResponse>, List<Map<String, dynamic>>>(landscape, (value) => pulumi.Input.encodeList<SapLandscapeMonitorSidMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sapApplication': ?pulumi.Input.mapOptionalInputValue<List<SapLandscapeMonitorSidMappingResponse>, List<Map<String, dynamic>>>(sapApplication, (value) => pulumi.Input.encodeList<SapLandscapeMonitorSidMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SapLandscapeMonitorPropertiesGroupingResponse.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorPropertiesGroupingResponse(
      landscape: (() { final guardedValue = map['landscape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SapLandscapeMonitorSidMappingResponse>(guardedValue, (value) => SapLandscapeMonitorSidMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sapApplication: (() { final guardedValue = map['sapApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SapLandscapeMonitorSidMappingResponse>(guardedValue, (value) => SapLandscapeMonitorSidMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

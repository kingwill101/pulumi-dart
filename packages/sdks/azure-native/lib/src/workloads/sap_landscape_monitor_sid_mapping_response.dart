// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the mapping for SID to Environment/Applications.
class SapLandscapeMonitorSidMappingResponse {
  /// Gets or sets the name of the grouping.
  final pulumi.Input<String>? name;
  /// Gets or sets the list of SID's.
  final pulumi.Input<List<String>>? topSid;

  /// Creates a new [SapLandscapeMonitorSidMappingResponse].
  /// [name] Gets or sets the name of the grouping.
  /// [topSid] Gets or sets the list of SID's.
  SapLandscapeMonitorSidMappingResponse({
    this.name,
    this.topSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'topSid': ?topSid,
    };
  }

  factory SapLandscapeMonitorSidMappingResponse.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorSidMappingResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      topSid: map['topSid'] == null ? null : ((map['topSid']! as List).cast<String>()).input(),
    );
  }
}


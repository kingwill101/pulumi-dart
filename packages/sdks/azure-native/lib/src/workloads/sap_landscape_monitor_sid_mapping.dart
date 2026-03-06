// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the mapping for SID to Environment/Applications.
class SapLandscapeMonitorSidMapping {
  /// Gets or sets the name of the grouping.
  final pulumi.Input<String>? name;
  /// Gets or sets the list of SID's.
  final pulumi.Input<List<String>>? topSid;

  /// Creates a new [SapLandscapeMonitorSidMapping].
  /// [name] Gets or sets the name of the grouping.
  /// [topSid] Gets or sets the list of SID's.
  const SapLandscapeMonitorSidMapping({
    this.name,
    this.topSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'topSid': ?topSid,
    };
  }

  factory SapLandscapeMonitorSidMapping.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorSidMapping(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topSid: (() { final guardedValue = map['topSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


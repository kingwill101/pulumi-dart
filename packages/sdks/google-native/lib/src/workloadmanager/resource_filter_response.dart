// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance_filter_response.dart';

/// Message describing resource filters
class ResourceFilterResponse {
  /// Filter compute engine resource
  final GceInstanceFilterResponse gceInstanceFilter;
  /// The label used for filter resource
  final Map<String, String> inclusionLabels;
  /// The id pattern for filter resource
  final List<String> resourceIdPatterns;
  /// The scopes of evaluation resource
  final List<String> scopes;

  /// Creates a new [ResourceFilterResponse].
  /// [gceInstanceFilter] Filter compute engine resource
  /// [inclusionLabels] The label used for filter resource
  /// [resourceIdPatterns] The id pattern for filter resource
  /// [scopes] The scopes of evaluation resource
  ResourceFilterResponse({
    required this.gceInstanceFilter,
    required this.inclusionLabels,
    required this.resourceIdPatterns,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstanceFilter': gceInstanceFilter.toMap(),
      'inclusionLabels': inclusionLabels,
      'resourceIdPatterns': resourceIdPatterns,
      'scopes': scopes,
    };
  }

  factory ResourceFilterResponse.fromMap(Map<String, dynamic> map) {
    return ResourceFilterResponse(
      gceInstanceFilter: GceInstanceFilterResponse.fromMap((map['gceInstanceFilter'] as Map).cast<String, dynamic>()),
      inclusionLabels: (map['inclusionLabels'] as Map).cast<String, String>(),
      resourceIdPatterns: (map['resourceIdPatterns'] as List).cast<String>(),
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}


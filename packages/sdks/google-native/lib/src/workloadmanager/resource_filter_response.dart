// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_instance_filter_response.dart';

/// Message describing resource filters
class ResourceFilterResponse {
  /// Filter compute engine resource
  final pulumi.Input<GceInstanceFilterResponse> gceInstanceFilter;
  /// The label used for filter resource
  final pulumi.Input<Map<String, String>> inclusionLabels;
  /// The id pattern for filter resource
  final pulumi.Input<List<String>> resourceIdPatterns;
  /// The scopes of evaluation resource
  final pulumi.Input<List<String>> scopes;

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
      'gceInstanceFilter': pulumi.Input.mapInputValue<GceInstanceFilterResponse, Map<String, dynamic>>(gceInstanceFilter, (value) => value.toMap()),
      'inclusionLabels': inclusionLabels,
      'resourceIdPatterns': resourceIdPatterns,
      'scopes': scopes,
    };
  }

  factory ResourceFilterResponse.fromMap(Map<String, dynamic> map) {
    return ResourceFilterResponse(
      gceInstanceFilter: pulumi.Input.fromValue(GceInstanceFilterResponse.fromMap((map['gceInstanceFilter']! as Map).cast<String, dynamic>())),
      inclusionLabels: pulumi.Input.fromValue((map['inclusionLabels'] as Map).cast<String, String>()),
      resourceIdPatterns: pulumi.Input.fromValue((map['resourceIdPatterns'] as List).cast<String>()),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PSC settings for a Cloud SQL instance.
class PscConfigResponse {
  /// Optional. The list of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  final pulumi.Input<List<String>> allowedConsumerProjects;

  /// Whether PSC connectivity is enabled for this instance.
  final pulumi.Input<bool> pscEnabled;

  /// Creates a new [PscConfigResponse].
  /// [allowedConsumerProjects] Optional. The list of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  /// [pscEnabled] Whether PSC connectivity is enabled for this instance.
  PscConfigResponse({
    required this.allowedConsumerProjects,
    required this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': allowedConsumerProjects,
      'pscEnabled': pscEnabled,
    };
  }

  factory PscConfigResponse.fromMap(Map<String, dynamic> map) {
    return PscConfigResponse(
      allowedConsumerProjects: pulumi.Input.fromValue(
        (map['allowedConsumerProjects'] as List).cast<String>(),
      ),
      pscEnabled: pulumi.Input.fromValue(map['pscEnabled'] as bool),
    );
  }
}

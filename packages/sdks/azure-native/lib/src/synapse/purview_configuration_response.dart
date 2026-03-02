// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Purview Configuration
class PurviewConfigurationResponse {
  /// Purview Resource ID
  final pulumi.Input<String>? purviewResourceId;

  /// Creates a new [PurviewConfigurationResponse].
  /// [purviewResourceId] Purview Resource ID
  PurviewConfigurationResponse({
    this.purviewResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purviewResourceId': ?purviewResourceId,
    };
  }

  factory PurviewConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return PurviewConfigurationResponse(
      purviewResourceId: map['purviewResourceId'] == null ? null : (map['purviewResourceId']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Purview Configuration
class PurviewConfiguration {
  /// Purview Resource ID
  final pulumi.Input<String>? purviewResourceId;

  /// Creates a new [PurviewConfiguration].
  /// [purviewResourceId] Purview Resource ID
  PurviewConfiguration({
    this.purviewResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purviewResourceId': ?purviewResourceId,
    };
  }

  factory PurviewConfiguration.fromMap(Map<String, dynamic> map) {
    return PurviewConfiguration(
      purviewResourceId: map['purviewResourceId'] == null ? null : (map['purviewResourceId'] as String).input(),
    );
  }
}


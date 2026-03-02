// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for an Action.
class Parameter {
  /// List of AS paths.
  final pulumi.Input<List<String>>? asPath;
  /// List of BGP communities.
  final pulumi.Input<List<String>>? community;
  /// List of route prefixes.
  final pulumi.Input<List<String>>? routePrefix;

  /// Creates a new [Parameter].
  /// [asPath] List of AS paths.
  /// [community] List of BGP communities.
  /// [routePrefix] List of route prefixes.
  Parameter({
    this.asPath,
    this.community,
    this.routePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPath': ?asPath,
      'community': ?community,
      'routePrefix': ?routePrefix,
    };
  }

  factory Parameter.fromMap(Map<String, dynamic> map) {
    return Parameter(
      asPath: map['asPath'] == null ? null : ((map['asPath'] as List).cast<String>()).input(),
      community: map['community'] == null ? null : ((map['community'] as List).cast<String>()).input(),
      routePrefix: map['routePrefix'] == null ? null : ((map['routePrefix'] as List).cast<String>()).input(),
    );
  }
}


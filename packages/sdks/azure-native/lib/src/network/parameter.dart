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
  const Parameter({
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
      asPath: (() { final guardedValue = map['asPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      community: (() { final guardedValue = map['community']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      routePrefix: (() { final guardedValue = map['routePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


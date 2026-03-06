// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteAsPath {
  /// (Output)
  /// The AS numbers of the AS Path.
  final pulumi.Input<List<int>>? asLists;
  /// (Output)
  /// The type of the AS Path, which can be one of the following values:
  /// - 'AS_SET': unordered set of autonomous systems that the route in has traversed
  /// - 'AS_SEQUENCE': ordered set of autonomous systems that the route has traversed
  /// - 'AS_CONFED_SEQUENCE': ordered set of Member Autonomous Systems in the local confederation that the route has traversed
  /// - 'AS_CONFED_SET': unordered set of Member Autonomous Systems in the local confederation that the route has traversed
  final pulumi.Input<String>? pathSegmentType;

  /// Creates a new [RouteAsPath].
  /// [asLists] (Output)
  /// [pathSegmentType] (Output)
  const RouteAsPath({
    this.asLists,
    this.pathSegmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asLists': ?asLists,
      'pathSegmentType': ?pathSegmentType,
    };
  }

  factory RouteAsPath.fromMap(Map<String, dynamic> map) {
    return RouteAsPath(
      asLists: (() { final guardedValue = map['asLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      pathSegmentType: (() { final guardedValue = map['pathSegmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routers_router.dart';

/// Result data returned by getRouters.
class GetRoutersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  final String? region;
  final List<GetRoutersRouter>? routers;

  /// Creates a new [GetRoutersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [region] Optional.
  /// [routers] Optional.
  const GetRoutersResult({
    this.id,
    this.project,
    this.region,
    this.routers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'project': ?project,
      'region': ?region,
      'routers': ?(() { final guardedValue = routers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoutersRouter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRoutersResult.fromMap(Map<String, dynamic> map) {
    return GetRoutersResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routers: (() { final guardedValue = map['routers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoutersRouter>(guardedValue, (value) => GetRoutersRouter.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

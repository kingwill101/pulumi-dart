// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sorganization.dart';

/// Result data returned by getS.
class GetSResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of all retrieved organizations. Structure is defined below.
  final List<GetSOrganization>? organizations;

  /// Creates a new [GetSResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [organizations] A list of all retrieved organizations. Structure is defined below.
  const GetSResult({
    this.filter,
    this.id,
    this.organizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'organizations': ?(() { final guardedValue = organizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSOrganization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSResult.fromMap(Map<String, dynamic> map) {
    return GetSResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizations: (() { final guardedValue = map['organizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSOrganization>(guardedValue, (value) => GetSOrganization.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

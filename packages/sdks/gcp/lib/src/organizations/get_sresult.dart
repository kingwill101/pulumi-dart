// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sorganization.dart';

/// Result data returned by getS.
class GetSResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of all retrieved organizations. Structure is defined below.
  final List<GetSOrganization> organizations;

  /// Creates a new [GetSResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [organizations] A list of all retrieved organizations. Structure is defined below.
  GetSResult({
    this.filter,
    required this.id,
    required this.organizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'organizations': pulumi.Input.encodeList<GetSOrganization, Map<String, dynamic>>(organizations, (value) => value.toMap()),
    };
  }

  factory GetSResult.fromMap(Map<String, dynamic> map) {
    return GetSResult(
      filter: map['filter'] == null ? null : map['filter']! as String,
      id: map['id'] as String,
      organizations: pulumi.Input.decodeList<GetSOrganization>(map['organizations'], (value) => GetSOrganization.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


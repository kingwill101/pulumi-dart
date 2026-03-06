// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_authority.dart';
import 'get_membership_endpoint.dart';

/// Result data returned by getMembership.
class GetMembershipResult {
  final List<GetMembershipAuthority> authorities;
  final Map<String, String> effectiveLabels;
  final List<GetMembershipEndpoint> endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String membershipId;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;

  /// Creates a new [GetMembershipResult].
  /// [authorities] Required.
  /// [effectiveLabels] Required.
  /// [endpoints] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [membershipId] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  const GetMembershipResult({
    required this.authorities,
    required this.effectiveLabels,
    required this.endpoints,
    required this.id,
    required this.labels,
    required this.location,
    required this.membershipId,
    required this.name,
    this.project,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorities': pulumi.Input.encodeList<GetMembershipAuthority, Map<String, dynamic>>(authorities, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'endpoints': pulumi.Input.encodeList<GetMembershipEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
      'labels': labels,
      'location': location,
      'membershipId': membershipId,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
    };
  }

  factory GetMembershipResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipResult(
      authorities: pulumi.Input.decodeList<GetMembershipAuthority>(map['authorities']!, (value) => GetMembershipAuthority.fromMap((value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      endpoints: pulumi.Input.decodeList<GetMembershipEndpoint>(map['endpoints']!, (value) => GetMembershipEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      membershipId: map['membershipId'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}


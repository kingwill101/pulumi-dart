// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_authority.dart';
import 'get_membership_endpoint.dart';

/// Result data returned by getMembership.
class GetMembershipResult {
  final List<GetMembershipAuthority>? authorities;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  final List<GetMembershipEndpoint>? endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? membershipId;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;

  /// Creates a new [GetMembershipResult].
  /// [authorities] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [endpoints] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [membershipId] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  const GetMembershipResult({
    this.authorities,
    this.deletionPolicy,
    this.effectiveLabels,
    this.endpoints,
    this.id,
    this.labels,
    this.location,
    this.membershipId,
    this.name,
    this.project,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorities': ?(() { final guardedValue = authorities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMembershipAuthority, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMembershipEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'membershipId': ?membershipId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory GetMembershipResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipResult(
      authorities: (() { final guardedValue = map['authorities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMembershipAuthority>(guardedValue, (value) => GetMembershipAuthority.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMembershipEndpoint>(guardedValue, (value) => GetMembershipEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      membershipId: (() { final guardedValue = map['membershipId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

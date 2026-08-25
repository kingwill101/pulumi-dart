// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganization.
class GetOrganizationResult {
  /// Timestamp when the Organization was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? createTime;
  /// The Google for Work customer ID of the Organization.
  final String? directoryCustomerId;
  final String? domain;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Organization's current lifecycle state.
  final String? lifecycleState;
  /// The resource name of the Organization in the form `organizations/{organization_id}`.
  final String? name;
  /// The Organization ID.
  final String? orgId;
  final String? organization;

  /// Creates a new [GetOrganizationResult].
  /// [createTime] Timestamp when the Organization was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  /// [directoryCustomerId] The Google for Work customer ID of the Organization.
  /// [domain] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lifecycleState] The Organization's current lifecycle state.
  /// [name] The resource name of the Organization in the form `organizations/{organization_id}`.
  /// [orgId] The Organization ID.
  /// [organization] Optional.
  const GetOrganizationResult({
    this.createTime,
    this.directoryCustomerId,
    this.domain,
    this.id,
    this.lifecycleState,
    this.name,
    this.orgId,
    this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'directoryCustomerId': ?directoryCustomerId,
      'domain': ?domain,
      'id': ?id,
      'lifecycleState': ?lifecycleState,
      'name': ?name,
      'orgId': ?orgId,
      'organization': ?organization,
    };
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryCustomerId: (() { final guardedValue = map['directoryCustomerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

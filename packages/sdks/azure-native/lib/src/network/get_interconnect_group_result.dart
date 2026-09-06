// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subgroup_profile_response.dart';
import 'subgroup_response.dart';

/// Result data returned by getInterconnectGroup.
class GetInterconnectGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the interconnect group resource.
  final String? provisioningState;
  /// The resource GUID property of the interconnect group resource.
  final String? resourceGuid;
  /// Scope of interconnect group resource.
  final String? scope;
  /// The subgroup profile of the interconnect group resource.
  final SubgroupProfileResponse? subgroupProfile;
  /// A list of subgroups of the interconnect group.
  final List<SubgroupResponse>? subgroups;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetInterconnectGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the interconnect group resource.
  /// [resourceGuid] The resource GUID property of the interconnect group resource.
  /// [scope] Scope of interconnect group resource.
  /// [subgroupProfile] The subgroup profile of the interconnect group resource.
  /// [subgroups] A list of subgroups of the interconnect group.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetInterconnectGroupResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.scope,
    this.subgroupProfile,
    this.subgroups,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'scope': ?scope,
      'subgroupProfile': ?subgroupProfile?.toMap(),
      'subgroups': ?(() { final guardedValue = subgroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubgroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInterconnectGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInterconnectGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subgroupProfile: (() { final guardedValue = map['subgroupProfile']; if (guardedValue == null) return null; return SubgroupProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subgroups: (() { final guardedValue = map['subgroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubgroupResponse>(guardedValue, (value) => SubgroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

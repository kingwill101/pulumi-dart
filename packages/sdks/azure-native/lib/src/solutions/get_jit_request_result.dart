// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_client_details_response.dart';
import 'jit_authorization_policies_response.dart';
import 'jit_scheduling_policy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJitRequest.
class GetJitRequestResult {
  /// The parent application id.
  final String? applicationResourceId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The client entity that created the JIT request.
  final ApplicationClientDetailsResponse? createdBy;
  /// Resource ID
  final String? id;
  /// The JIT authorization policies.
  final List<JitAuthorizationPoliciesResponse>? jitAuthorizationPolicies;
  /// The JIT request state.
  final String? jitRequestState;
  /// The JIT request properties.
  final JitSchedulingPolicyResponse? jitSchedulingPolicy;
  /// Resource location
  final String? location;
  /// Resource name
  final String? name;
  /// The JIT request provisioning state.
  final String? provisioningState;
  /// The publisher tenant id.
  final String? publisherTenantId;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String? type;
  /// The client entity that last updated the JIT request.
  final ApplicationClientDetailsResponse? updatedBy;

  /// Creates a new [GetJitRequestResult].
  /// [applicationResourceId] The parent application id.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] The client entity that created the JIT request.
  /// [id] Resource ID
  /// [jitAuthorizationPolicies] The JIT authorization policies.
  /// [jitRequestState] The JIT request state.
  /// [jitSchedulingPolicy] The JIT request properties.
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] The JIT request provisioning state.
  /// [publisherTenantId] The publisher tenant id.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [updatedBy] The client entity that last updated the JIT request.
  const GetJitRequestResult({
    this.applicationResourceId,
    this.azureApiVersion,
    this.createdBy,
    this.id,
    this.jitAuthorizationPolicies,
    this.jitRequestState,
    this.jitSchedulingPolicy,
    this.location,
    this.name,
    this.provisioningState,
    this.publisherTenantId,
    this.systemData,
    this.tags,
    this.type,
    this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationResourceId': ?applicationResourceId,
      'azureApiVersion': ?azureApiVersion,
      'createdBy': ?createdBy?.toMap(),
      'id': ?id,
      'jitAuthorizationPolicies': ?(() { final guardedValue = jitAuthorizationPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<JitAuthorizationPoliciesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'jitRequestState': ?jitRequestState,
      'jitSchedulingPolicy': ?jitSchedulingPolicy?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publisherTenantId': ?publisherTenantId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'updatedBy': ?updatedBy?.toMap(),
    };
  }

  factory GetJitRequestResult.fromMap(Map<String, dynamic> map) {
    return GetJitRequestResult(
      applicationResourceId: (() { final guardedValue = map['applicationResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jitAuthorizationPolicies: (() { final guardedValue = map['jitAuthorizationPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<JitAuthorizationPoliciesResponse>(guardedValue, (value) => JitAuthorizationPoliciesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      jitRequestState: (() { final guardedValue = map['jitRequestState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jitSchedulingPolicy: (() { final guardedValue = map['jitSchedulingPolicy']; if (guardedValue == null) return null; return JitSchedulingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisherTenantId: (() { final guardedValue = map['publisherTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

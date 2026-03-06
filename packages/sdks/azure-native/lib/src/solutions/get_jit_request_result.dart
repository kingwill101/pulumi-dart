// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_client_details_response.dart';
import 'jit_authorization_policies_response.dart';
import 'jit_scheduling_policy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJitRequest.
class GetJitRequestResult {
  /// The parent application id.
  final String applicationResourceId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The client entity that created the JIT request.
  final ApplicationClientDetailsResponse createdBy;
  /// Resource ID
  final String id;
  /// The JIT authorization policies.
  final List<JitAuthorizationPoliciesResponse> jitAuthorizationPolicies;
  /// The JIT request state.
  final String jitRequestState;
  /// The JIT request properties.
  final JitSchedulingPolicyResponse jitSchedulingPolicy;
  /// Resource location
  final String? location;
  /// Resource name
  final String name;
  /// The JIT request provisioning state.
  final String provisioningState;
  /// The publisher tenant id.
  final String publisherTenantId;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;
  /// The client entity that last updated the JIT request.
  final ApplicationClientDetailsResponse updatedBy;

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
    required this.applicationResourceId,
    required this.azureApiVersion,
    required this.createdBy,
    required this.id,
    required this.jitAuthorizationPolicies,
    required this.jitRequestState,
    required this.jitSchedulingPolicy,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.publisherTenantId,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationResourceId': applicationResourceId,
      'azureApiVersion': azureApiVersion,
      'createdBy': createdBy.toMap(),
      'id': id,
      'jitAuthorizationPolicies': pulumi.Input.encodeList<JitAuthorizationPoliciesResponse, Map<String, dynamic>>(jitAuthorizationPolicies, (value) => value.toMap()),
      'jitRequestState': jitRequestState,
      'jitSchedulingPolicy': jitSchedulingPolicy.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'publisherTenantId': publisherTenantId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedBy': updatedBy.toMap(),
    };
  }

  factory GetJitRequestResult.fromMap(Map<String, dynamic> map) {
    return GetJitRequestResult(
      applicationResourceId: map['applicationResourceId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      createdBy: ApplicationClientDetailsResponse.fromMap((map['createdBy']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      jitAuthorizationPolicies: pulumi.Input.decodeList<JitAuthorizationPoliciesResponse>(map['jitAuthorizationPolicies']!, (value) => JitAuthorizationPoliciesResponse.fromMap((value as Map).cast<String, dynamic>())),
      jitRequestState: map['jitRequestState'] as String,
      jitSchedulingPolicy: JitSchedulingPolicyResponse.fromMap((map['jitSchedulingPolicy']! as Map).cast<String, dynamic>()),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publisherTenantId: map['publisherTenantId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      updatedBy: ApplicationClientDetailsResponse.fromMap((map['updatedBy']! as Map).cast<String, dynamic>()),
    );
  }
}


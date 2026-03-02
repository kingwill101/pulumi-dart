// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_quota_response.dart';

/// Binds the resources in a proxy or remote service with the gRPC operation and its associated quota enforcement.
class GoogleCloudApigeeV1GrpcOperationConfigResponse {
  /// Name of the API proxy with which the gRPC operation and quota are associated.
  final pulumi.Input<String> apiSource;
  /// Custom attributes associated with the operation.
  final pulumi.Input<List<GoogleCloudApigeeV1AttributeResponse>> attributes;
  /// List of unqualified gRPC method names for the proxy to which quota will be applied. If this field is empty, the Quota will apply to all operations on the gRPC service defined on the proxy. Example: Given a proxy that is configured to serve com.petstore.PetService, the methods com.petstore.PetService.ListPets and com.petstore.PetService.GetPet would be specified here as simply ["ListPets", "GetPet"].
  final pulumi.Input<List<String>> methods;
  /// Quota parameters to be enforced for the methods and API source combination. If none are specified, quota enforcement will not be done.
  final pulumi.Input<GoogleCloudApigeeV1QuotaResponse> quota;
  /// gRPC Service name associated to be associated with the API proxy, on which quota rules can be applied upon.
  final pulumi.Input<String> service;

  /// Creates a new [GoogleCloudApigeeV1GrpcOperationConfigResponse].
  /// [apiSource] Name of the API proxy with which the gRPC operation and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [methods] List of unqualified gRPC method names for the proxy to which quota will be applied. If this field is empty, the Quota will apply to all operations on the gRPC service defined on the proxy. Example: Given a proxy that is configured to serve com.petstore.PetService, the methods com.petstore.PetService.ListPets and com.petstore.PetService.GetPet would be specified here as simply ["ListPets", "GetPet"].
  /// [quota] Quota parameters to be enforced for the methods and API source combination. If none are specified, quota enforcement will not be done.
  /// [service] gRPC Service name associated to be associated with the API proxy, on which quota rules can be applied upon.
  GoogleCloudApigeeV1GrpcOperationConfigResponse({
    required this.apiSource,
    required this.attributes,
    required this.methods,
    required this.quota,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': apiSource,
      'attributes': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1AttributeResponse>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methods': methods,
      'quota': pulumi.Input.mapInputValue<GoogleCloudApigeeV1QuotaResponse, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'service': service,
    };
  }

  factory GoogleCloudApigeeV1GrpcOperationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GrpcOperationConfigResponse(
      apiSource: (map['apiSource'] as String).input(),
      attributes: (pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(map['attributes'], (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      methods: ((map['methods'] as List).cast<String>()).input(),
      quota: (GoogleCloudApigeeV1QuotaResponse.fromMap((map['quota'] as Map).cast<String, dynamic>())).input(),
      service: (map['service'] as String).input(),
    );
  }
}


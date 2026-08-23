// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'kubernetes_version_value_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKubernetesVersion.
class GetKubernetesVersionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  final String etag;
  /// The extended location of the resource. This property is required when creating the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the Kubernetes version resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The list of available Kubernetes versions.
  final List<KubernetesVersionValueResponse> values;

  /// Creates a new [GetKubernetesVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  /// [extendedLocation] The extended location of the resource. This property is required when creating the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the Kubernetes version resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [values] The list of available Kubernetes versions.
  const GetKubernetesVersionResult({
    required this.azureApiVersion,
    required this.etag,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'values': pulumi.Input.encodeList<KubernetesVersionValueResponse, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory GetKubernetesVersionResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      values: pulumi.Input.decodeList<KubernetesVersionValueResponse>(map['values']!, (value) => KubernetesVersionValueResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

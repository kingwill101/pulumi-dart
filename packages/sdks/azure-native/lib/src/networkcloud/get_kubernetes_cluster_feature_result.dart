// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'string_key_value_pair_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKubernetesClusterFeature.
class GetKubernetesClusterFeatureResult {
  /// The lifecycle indicator of the feature.
  final String availabilityLifecycle;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The detailed status of the feature.
  final String detailedStatus;
  /// The descriptive message for the detailed status of the feature.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The configured options for the feature.
  final List<StringKeyValuePairResponse>? options;
  /// The provisioning state of the Kubernetes cluster feature.
  final String provisioningState;
  /// The indicator of if the feature is required or optional. Optional features may be deleted by the user, while required features are managed with the kubernetes cluster lifecycle.
  final String required;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The version of the feature.
  final String version;

  /// Creates a new [GetKubernetesClusterFeatureResult].
  /// [availabilityLifecycle] The lifecycle indicator of the feature.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [detailedStatus] The detailed status of the feature.
  /// [detailedStatusMessage] The descriptive message for the detailed status of the feature.
  /// [etag] Resource ETag.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [options] The configured options for the feature.
  /// [provisioningState] The provisioning state of the Kubernetes cluster feature.
  /// [required] The indicator of if the feature is required or optional. Optional features may be deleted by the user, while required features are managed with the kubernetes cluster lifecycle.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version of the feature.
  const GetKubernetesClusterFeatureResult({
    required this.availabilityLifecycle,
    required this.azureApiVersion,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    this.options,
    required this.provisioningState,
    required this.required,
    required this.systemData,
    this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityLifecycle': availabilityLifecycle,
      'azureApiVersion': azureApiVersion,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'options': ?(() { final guardedValue = options; if (guardedValue == null) return null; return pulumi.Input.encodeList<StringKeyValuePairResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'required': required,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': version,
    };
  }

  factory GetKubernetesClusterFeatureResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterFeatureResult(
      availabilityLifecycle: map['availabilityLifecycle'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StringKeyValuePairResponse>(guardedValue, (value) => StringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      required: map['required'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

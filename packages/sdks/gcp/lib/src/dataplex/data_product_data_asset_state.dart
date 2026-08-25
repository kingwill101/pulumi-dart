// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_data_asset_access_group_config.dart';

/// Input properties used for looking up and filtering DataProductDataAsset resources.
class DataProductDataAssetState {
  /// Access groups configurations.
  /// Structure is documented below.
  final pulumi.Input<List<DataProductDataAssetAccessGroupConfig>?>? accessGroupConfigs;
  /// The ID of the data asset.
  final pulumi.Input<String?>? dataAssetId;
  /// The ID of the parent data product.
  final pulumi.Input<String?>? dataProductId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the data asset.
  final pulumi.Input<String?>? location;
  /// The relative resource name of the data asset.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Full resource name of the cloud resource.
  final pulumi.Input<String?>? resource;
  /// System generated unique ID.
  final pulumi.Input<String?>? uid;

  /// Creates a new [DataProductDataAssetState].
  /// [accessGroupConfigs] Access groups configurations.
  /// [dataAssetId] The ID of the data asset.
  /// [dataProductId] The ID of the parent data product.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] User-defined labels.
  /// [location] The location for the data asset.
  /// [name] The relative resource name of the data asset.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [resource] Full resource name of the cloud resource.
  /// [uid] System generated unique ID.
  const DataProductDataAssetState({
    this.accessGroupConfigs,
    this.dataAssetId,
    this.dataProductId,
    this.deletionPolicy,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.resource,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupConfigs': ?pulumi.Input.mapOptionalInputValue<List<DataProductDataAssetAccessGroupConfig>, List<Map<String, dynamic>>>(accessGroupConfigs, (value) => pulumi.Input.encodeList<DataProductDataAssetAccessGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataAssetId': ?dataAssetId,
      'dataProductId': ?dataProductId,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resource': ?resource,
      'uid': ?uid,
    };
  }

  factory DataProductDataAssetState.fromMap(Map<String, dynamic> map) {
    return DataProductDataAssetState(
      accessGroupConfigs: (() { final guardedValue = map['accessGroupConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataProductDataAssetAccessGroupConfig>(guardedValue, (value) => DataProductDataAssetAccessGroupConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataAssetId: (() { final guardedValue = map['dataAssetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProductId: (() { final guardedValue = map['dataProductId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

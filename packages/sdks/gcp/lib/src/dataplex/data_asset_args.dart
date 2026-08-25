// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_asset_access_group_config.dart';

/// {@template pulumi_dataplex_data_asset_data_asset_args_doc}
/// The set of arguments for DataAsset.
/// {@endtemplate}
/// {@macro pulumi_dataplex_data_asset_data_asset_args_doc}
class DataAssetArgs {
  /// Access groups configurations.
  /// Structure is documented below.
  final pulumi.Input<List<DataAssetAccessGroupConfig>?>? accessGroupConfigs;
  /// The ID of the data asset.
  final pulumi.Input<String> dataAssetId;
  /// The ID of the parent data product.
  final pulumi.Input<String> dataProductId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the data asset.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Full resource name of the cloud resource.
  final pulumi.Input<String> resource;

  /// Creates a new [DataAssetArgs].
  /// [accessGroupConfigs] Access groups configurations.
  /// [dataAssetId] The ID of the data asset.
  /// [dataProductId] The ID of the parent data product.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] User-defined labels.
  /// [location] The location for the data asset.
  /// [project] The ID of the project in which the resource belongs.
  /// [resource] Full resource name of the cloud resource.
  const DataAssetArgs({
    this.accessGroupConfigs,
    required this.dataAssetId,
    required this.dataProductId,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.project,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupConfigs': ?pulumi.Input.mapOptionalInputValue<List<DataAssetAccessGroupConfig>, List<Map<String, dynamic>>>(accessGroupConfigs, (value) => pulumi.Input.encodeList<DataAssetAccessGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataAssetId': dataAssetId,
      'dataProductId': dataProductId,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'resource': resource,
    };
  }

  factory DataAssetArgs.fromMap(Map<String, dynamic> map) {
    return DataAssetArgs(
      accessGroupConfigs: (() { final guardedValue = map['accessGroupConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAssetAccessGroupConfig>(guardedValue, (value) => DataAssetAccessGroupConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataAssetId: pulumi.Input.fromValue(map['dataAssetId'] as String),
      dataProductId: pulumi.Input.fromValue(map['dataProductId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}

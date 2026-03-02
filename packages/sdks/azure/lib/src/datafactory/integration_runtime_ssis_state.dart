// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_ssis_catalog_info.dart';
import 'integration_runtime_ssis_copy_compute_scale.dart';
import 'integration_runtime_ssis_custom_setup_script.dart';
import 'integration_runtime_ssis_express_custom_setup.dart';
import 'integration_runtime_ssis_express_vnet_integration.dart';
import 'integration_runtime_ssis_package_store.dart';
import 'integration_runtime_ssis_pipeline_external_compute_scale.dart';
import 'integration_runtime_ssis_proxy.dart';
import 'integration_runtime_ssis_vnet_integration.dart';

/// Input properties used for looking up and filtering IntegrationRuntimeSsis resources.
class IntegrationRuntimeSsisState {
  /// A `catalog_info` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisCatalogInfo>? catalogInfo;
  /// One `copy_compute_scale` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisCopyComputeScale>? copyComputeScale;
  /// The name of a Data Factory Credential that the SSIS integration will use to access data sources. For example, `azure.datafactory.CredentialUserManagedIdentity`
  ///
  /// > **Note:** If `credential_name` is omitted, the integration runtime will use the Data Factory assigned identity.
  final pulumi.Input<String>? credentialName;
  /// A `custom_setup_script` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisCustomSetupScript>? customSetupScript;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The Azure-SSIS Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`.
  final pulumi.Input<String>? edition;
  /// An `express_custom_setup` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisExpressCustomSetup>? expressCustomSetup;
  /// A `express_vnet_integration` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisExpressVnetIntegration>? expressVnetIntegration;
  /// The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`.
  final pulumi.Input<String>? licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`.
  final pulumi.Input<int>? maxParallelExecutionsPerNode;
  /// Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2`
  final pulumi.Input<String>? nodeSize;
  /// Number of nodes for the Azure-SSIS Integration Runtime. Max is `10`. Defaults to `1`.
  final pulumi.Input<int>? numberOfNodes;
  /// One or more `package_store` block as defined below.
  final pulumi.Input<List<IntegrationRuntimeSsisPackageStore>>? packageStores;
  /// One `pipeline_external_compute_scale` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisPipelineExternalComputeScale>? pipelineExternalComputeScale;
  /// A `proxy` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisProxy>? proxy;
  /// A `vnet_integration` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisVnetIntegration>? vnetIntegration;

  /// Creates a new [IntegrationRuntimeSsisState].
  /// [catalogInfo] A `catalog_info` block as defined below.
  /// [copyComputeScale] One `copy_compute_scale` block as defined below.
  /// [credentialName] The name of a Data Factory Credential that the SSIS integration will use to access data sources. For example, `azure.datafactory.CredentialUserManagedIdentity`
  /// [customSetupScript] A `custom_setup_script` block as defined below.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] Integration runtime description.
  /// [edition] The Azure-SSIS Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`.
  /// [expressCustomSetup] An `express_custom_setup` block as defined below.
  /// [expressVnetIntegration] A `express_vnet_integration` block as defined below.
  /// [licenseType] The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maxParallelExecutionsPerNode] Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`.
  /// [name] Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [nodeSize] The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2`
  /// [numberOfNodes] Number of nodes for the Azure-SSIS Integration Runtime. Max is `10`. Defaults to `1`.
  /// [packageStores] One or more `package_store` block as defined below.
  /// [pipelineExternalComputeScale] One `pipeline_external_compute_scale` block as defined below.
  /// [proxy] A `proxy` block as defined below.
  /// [vnetIntegration] A `vnet_integration` block as defined below.
  IntegrationRuntimeSsisState({
    this.catalogInfo,
    this.copyComputeScale,
    this.credentialName,
    this.customSetupScript,
    this.dataFactoryId,
    this.description,
    this.edition,
    this.expressCustomSetup,
    this.expressVnetIntegration,
    this.licenseType,
    this.location,
    this.maxParallelExecutionsPerNode,
    this.name,
    this.nodeSize,
    this.numberOfNodes,
    this.packageStores,
    this.pipelineExternalComputeScale,
    this.proxy,
    this.vnetIntegration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogInfo': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCatalogInfo, Map<String, dynamic>>(catalogInfo, (value) => value.toMap()),
      'copyComputeScale': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCopyComputeScale, Map<String, dynamic>>(copyComputeScale, (value) => value.toMap()),
      'credentialName': ?credentialName,
      'customSetupScript': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCustomSetupScript, Map<String, dynamic>>(customSetupScript, (value) => value.toMap()),
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'edition': ?edition,
      'expressCustomSetup': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisExpressCustomSetup, Map<String, dynamic>>(expressCustomSetup, (value) => value.toMap()),
      'expressVnetIntegration': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisExpressVnetIntegration, Map<String, dynamic>>(expressVnetIntegration, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'maxParallelExecutionsPerNode': ?maxParallelExecutionsPerNode,
      'name': ?name,
      'nodeSize': ?nodeSize,
      'numberOfNodes': ?numberOfNodes,
      'packageStores': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeSsisPackageStore>, List<Map<String, dynamic>>>(packageStores, (value) => pulumi.Input.encodeList<IntegrationRuntimeSsisPackageStore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pipelineExternalComputeScale': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisPipelineExternalComputeScale, Map<String, dynamic>>(pipelineExternalComputeScale, (value) => value.toMap()),
      'proxy': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'vnetIntegration': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisVnetIntegration, Map<String, dynamic>>(vnetIntegration, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeSsisState.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisState(
      catalogInfo: map['catalogInfo'] == null ? null : (IntegrationRuntimeSsisCatalogInfo.fromMap((map['catalogInfo'] as Map).cast<String, dynamic>())).input(),
      copyComputeScale: map['copyComputeScale'] == null ? null : (IntegrationRuntimeSsisCopyComputeScale.fromMap((map['copyComputeScale'] as Map).cast<String, dynamic>())).input(),
      credentialName: map['credentialName'] == null ? null : (map['credentialName'] as String).input(),
      customSetupScript: map['customSetupScript'] == null ? null : (IntegrationRuntimeSsisCustomSetupScript.fromMap((map['customSetupScript'] as Map).cast<String, dynamic>())).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      edition: map['edition'] == null ? null : (map['edition'] as String).input(),
      expressCustomSetup: map['expressCustomSetup'] == null ? null : (IntegrationRuntimeSsisExpressCustomSetup.fromMap((map['expressCustomSetup'] as Map).cast<String, dynamic>())).input(),
      expressVnetIntegration: map['expressVnetIntegration'] == null ? null : (IntegrationRuntimeSsisExpressVnetIntegration.fromMap((map['expressVnetIntegration'] as Map).cast<String, dynamic>())).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxParallelExecutionsPerNode: map['maxParallelExecutionsPerNode'] == null ? null : (map['maxParallelExecutionsPerNode'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeSize: map['nodeSize'] == null ? null : (map['nodeSize'] as String).input(),
      numberOfNodes: map['numberOfNodes'] == null ? null : (map['numberOfNodes'] as int).input(),
      packageStores: map['packageStores'] == null ? null : (pulumi.Input.decodeList<IntegrationRuntimeSsisPackageStore>(map['packageStores'], (value) => IntegrationRuntimeSsisPackageStore.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pipelineExternalComputeScale: map['pipelineExternalComputeScale'] == null ? null : (IntegrationRuntimeSsisPipelineExternalComputeScale.fromMap((map['pipelineExternalComputeScale'] as Map).cast<String, dynamic>())).input(),
      proxy: map['proxy'] == null ? null : (IntegrationRuntimeSsisProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())).input(),
      vnetIntegration: map['vnetIntegration'] == null ? null : (IntegrationRuntimeSsisVnetIntegration.fromMap((map['vnetIntegration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


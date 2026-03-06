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
  /// &gt; **Note:** If `credential_name` is omitted, the integration runtime will use the Data Factory assigned identity.
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
  const IntegrationRuntimeSsisState({
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
      catalogInfo: (() { final guardedValue = map['catalogInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisCatalogInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      copyComputeScale: (() { final guardedValue = map['copyComputeScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisCopyComputeScale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credentialName: (() { final guardedValue = map['credentialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customSetupScript: (() { final guardedValue = map['customSetupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisCustomSetupScript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressCustomSetup: (() { final guardedValue = map['expressCustomSetup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisExpressCustomSetup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expressVnetIntegration: (() { final guardedValue = map['expressVnetIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisExpressVnetIntegration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxParallelExecutionsPerNode: (() { final guardedValue = map['maxParallelExecutionsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeSize: (() { final guardedValue = map['nodeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfNodes: (() { final guardedValue = map['numberOfNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      packageStores: (() { final guardedValue = map['packageStores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntegrationRuntimeSsisPackageStore>(guardedValue, (value) => IntegrationRuntimeSsisPackageStore.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pipelineExternalComputeScale: (() { final guardedValue = map['pipelineExternalComputeScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisPipelineExternalComputeScale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisProxy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vnetIntegration: (() { final guardedValue = map['vnetIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisVnetIntegration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


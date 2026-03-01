// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceNetworkOutboundRuleServiceTag resources.
class WorkspaceNetworkOutboundRuleServiceTagState {
  /// Specifies the name of the Machine Learning Workspace Network Outbound Rule Service Tag. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies which ports traffic will be allowed by this rule. You can specify a single port (e.g. ` 80`) , a port range (e.g. `1024-655535`) or a comma-separated list of single ports and/or port ranges(e.g. `80,1024-655535`). `*` can be used to allow traffic on any port.
  final pulumi.Input<String>? portRanges;
  /// Specifies the network protocol. Possible values are `*`, `TCP`, `UDP` and `ICMP`
  final pulumi.Input<String>? protocol;
  /// Specifies the fully qualified domain name to allow for outbound traffic. Possible values are `AppConfiguration`,`AppService`,`AzureActiveDirectory`,`AzureAdvancedThreatProtection`,`AzureArcInfrastructure`,`AzureAttestation`,`AzureBackup`,`AzureBotService`,`AzureContainerRegistry`,`AzureCosmosDB`,`AzureDataLake`,`AzureDevSpaces`,`AzureInformationProtection`,`AzureIoTHub`,`AzureKeyVault`,`AzureManagedGrafana`,`AzureMonitor`,`AzureOpenDatasets`,`AzurePlatformDNS`,`AzurePlatformIMDS`,`AzurePlatformLKM`,`AzureResourceManager`,`AzureSignalR`,`AzureSiteRecovery`,`AzureSpringCloud`,`AzureStack`,`AzureUpdateDelivery`,`DataFactoryManagement`,`EventHub`,`GuestAndHybridManagement`,`M365ManagementActivityApi`,`M365ManagementActivityApi`,`MicrosoftAzureFluidRelay`,`MicrosoftCloudAppSecurity`,`MicrosoftContainerRegistry`,`PowerPlatformInfra`,`ServiceBus`,`Sql`,`Storage`,`WindowsAdminCenter`,`AppServiceManagement`,`AutonomousDevelopmentPlatform`,`AzureActiveDirectoryDomainServices`,`AzureCloud`,`AzureConnectors`,`AzureContainerAppsService`,`AzureDatabricks`,`AzureDeviceUpdate`,`AzureEventGrid`,`AzureFrontDoor.Frontend`,`AzureFrontDoor.Backend`,`AzureFrontDoor.FirstParty`,`AzureHealthcareAPIs`,`AzureLoadBalancer`,`AzureMachineLearning`,`AzureSphere`,`AzureWebPubSub`,`BatchNodeManagement`,`ChaosStudio`,`CognitiveServicesFrontend`,`CognitiveServicesManagement`,`DataFactory`,`Dynamics365ForMarketingEmail`,`Dynamics365BusinessCentral`,`EOPExternalPublishedIPs`,`Internet`,`LogicApps`,`Marketplace`,`MicrosoftDefenderForEndpoint`,`PowerBI`,`PowerQueryOnline`,`ServiceFabric`,`SqlManagement`,`StorageSyncService`,`WindowsVirtualDesktop` and `VirtualNetwork`.
  final pulumi.Input<String>? serviceTag;
  /// Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceNetworkOutboundRuleServiceTagState].
  /// [name] Specifies the name of the Machine Learning Workspace Network Outbound Rule Service Tag. Changing this forces a new resource to be created.
  /// [portRanges] Specifies which ports traffic will be allowed by this rule. You can specify a single port (e.g. ` 80`) , a port range (e.g. `1024-655535`) or a comma-separated list of single ports and/or port ranges(e.g. `80,1024-655535`). `*` can be used to allow traffic on any port.
  /// [protocol] Specifies the network protocol. Possible values are `*`, `TCP`, `UDP` and `ICMP`
  /// [serviceTag] Specifies the fully qualified domain name to allow for outbound traffic. Possible values are `AppConfiguration`,`AppService`,`AzureActiveDirectory`,`AzureAdvancedThreatProtection`,`AzureArcInfrastructure`,`AzureAttestation`,`AzureBackup`,`AzureBotService`,`AzureContainerRegistry`,`AzureCosmosDB`,`AzureDataLake`,`AzureDevSpaces`,`AzureInformationProtection`,`AzureIoTHub`,`AzureKeyVault`,`AzureManagedGrafana`,`AzureMonitor`,`AzureOpenDatasets`,`AzurePlatformDNS`,`AzurePlatformIMDS`,`AzurePlatformLKM`,`AzureResourceManager`,`AzureSignalR`,`AzureSiteRecovery`,`AzureSpringCloud`,`AzureStack`,`AzureUpdateDelivery`,`DataFactoryManagement`,`EventHub`,`GuestAndHybridManagement`,`M365ManagementActivityApi`,`M365ManagementActivityApi`,`MicrosoftAzureFluidRelay`,`MicrosoftCloudAppSecurity`,`MicrosoftContainerRegistry`,`PowerPlatformInfra`,`ServiceBus`,`Sql`,`Storage`,`WindowsAdminCenter`,`AppServiceManagement`,`AutonomousDevelopmentPlatform`,`AzureActiveDirectoryDomainServices`,`AzureCloud`,`AzureConnectors`,`AzureContainerAppsService`,`AzureDatabricks`,`AzureDeviceUpdate`,`AzureEventGrid`,`AzureFrontDoor.Frontend`,`AzureFrontDoor.Backend`,`AzureFrontDoor.FirstParty`,`AzureHealthcareAPIs`,`AzureLoadBalancer`,`AzureMachineLearning`,`AzureSphere`,`AzureWebPubSub`,`BatchNodeManagement`,`ChaosStudio`,`CognitiveServicesFrontend`,`CognitiveServicesManagement`,`DataFactory`,`Dynamics365ForMarketingEmail`,`Dynamics365BusinessCentral`,`EOPExternalPublishedIPs`,`Internet`,`LogicApps`,`Marketplace`,`MicrosoftDefenderForEndpoint`,`PowerBI`,`PowerQueryOnline`,`ServiceFabric`,`SqlManagement`,`StorageSyncService`,`WindowsVirtualDesktop` and `VirtualNetwork`.
  /// [workspaceId] Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  WorkspaceNetworkOutboundRuleServiceTagState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? portRanges,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? serviceTag,
    pulumi.Output<String>? workspaceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      portRanges = pulumi.Input.asOptionalInput<String>(portRanges),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      serviceTag = pulumi.Input.asOptionalInput<String>(serviceTag),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'portRanges': ?portRanges,
      'protocol': ?protocol,
      'serviceTag': ?serviceTag,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceNetworkOutboundRuleServiceTagState.fromMap(Map<String, dynamic> map) {
    return WorkspaceNetworkOutboundRuleServiceTagState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portRanges: map['portRanges'] == null ? null : pulumi.Output.create<String>(map['portRanges'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      serviceTag: map['serviceTag'] == null ? null : pulumi.Output.create<String>(map['serviceTag'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}


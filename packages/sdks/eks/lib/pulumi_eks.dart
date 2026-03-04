// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_eks/index.dart' as module_index;
import 'package:pulumi_eks/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final AccessEntry = module_index.AccessEntry.new;
  final AccessEntryArgs = module_index.AccessEntry.new;
  final AccessEntryType = module_index.AccessEntryType.values;
  final AccessPolicyAssociation = module_index.AccessPolicyAssociation.new;
  final AccessPolicyAssociationArgs = module_index.AccessPolicyAssociation.new;
  final Addon = module_index.Addon.new;
  final AddonArgs = module_index.AddonArgs.new;
  final AmiType = module_index.AmiType.values;
  final AuthenticationMode = module_index.AuthenticationMode.values;
  final AutoModeOptions = module_index.AutoModeOptions.new;
  final AutoModeOptionsArgs = module_index.AutoModeOptions.new;
  final Cluster = module_index.Cluster.new;
  final ClusterArgs = module_index.ClusterArgs.new;
  final ClusterComputeConfig = module_index.ClusterComputeConfig.new;
  final ClusterComputeConfigArgs = module_index.ClusterComputeConfig.new;
  final ClusterCreationRoleProvider =
      module_index.ClusterCreationRoleProvider.new;
  final ClusterCreationRoleProviderArgs =
      module_index.ClusterCreationRoleProviderArgs.new;
  final ClusterGetKubeconfigArgs = module_index.ClusterGetKubeconfigArgs.new;
  final ClusterGetKubeconfigResult =
      module_index.ClusterGetKubeconfigResult.new;
  final ClusterGetKubeconfigResultArgs =
      module_index.ClusterGetKubeconfigResult.new;
  final ClusterNodeGroupOptions = module_index.ClusterNodeGroupOptions.new;
  final ClusterNodeGroupOptionsArgs = module_index.ClusterNodeGroupOptions.new;
  final ClusterNodePools = module_index.ClusterNodePools.values;
  final CoreData = module_index.CoreData.new;
  final CoreDataArgs = module_index.CoreData.new;
  final CoreDnsAddonOptions = module_index.CoreDnsAddonOptions.new;
  final CoreDnsAddonOptionsArgs = module_index.CoreDnsAddonOptions.new;
  final CreationRoleProvider = module_index.CreationRoleProvider.new;
  final CreationRoleProviderArgs = module_index.CreationRoleProvider.new;
  final FargateProfile = module_index.FargateProfile.new;
  final FargateProfileArgs = module_index.FargateProfile.new;
  final GetKubeconfigArgs = module_index.GetKubeconfigArgs.new;
  final GetKubeconfigResult = module_index.GetKubeconfigResult.new;
  final GetKubeconfigResultArgs = module_index.GetKubeconfigResult.new;
  final KubeProxyAddonOptions = module_index.KubeProxyAddonOptions.new;
  final KubeProxyAddonOptionsArgs = module_index.KubeProxyAddonOptions.new;
  final KubeconfigOptions = module_index.KubeconfigOptions.new;
  final KubeconfigOptionsArgs = module_index.KubeconfigOptions.new;
  final ManagedNodeGroup = module_index.ManagedNodeGroup.new;
  final ManagedNodeGroupArgs = module_index.ManagedNodeGroupArgs.new;
  final NodeGroup = module_index.NodeGroup.new;
  final NodeGroupArgs = module_index.NodeGroupArgs.new;
  final NodeGroupData = module_index.NodeGroupData.new;
  final NodeGroupDataArgs = module_index.NodeGroupData.new;
  final NodeGroupSecurityGroup = module_index.NodeGroupSecurityGroup.new;
  final NodeGroupSecurityGroupArgs =
      module_index.NodeGroupSecurityGroupArgs.new;
  final NodeGroupV2 = module_index.NodeGroupV2.new;
  final NodeGroupV2Args = module_index.NodeGroupV2Args.new;
  final NodeadmOptions = module_index.NodeadmOptions.new;
  final NodeadmOptionsArgs = module_index.NodeadmOptions.new;
  final OperatingSystem = module_index.OperatingSystem.values;
  final ResolveConflictsOnCreate = module_index.ResolveConflictsOnCreate.values;
  final ResolveConflictsOnUpdate = module_index.ResolveConflictsOnUpdate.values;
  final RoleMapping = module_index.RoleMapping.new;
  final RoleMappingArgs = module_index.RoleMapping.new;
  final StorageClass = module_index.StorageClass.new;
  final StorageClassArgs = module_index.StorageClass.new;
  final Taint = module_index.Taint.new;
  final TaintArgs = module_index.Taint.new;
  final UserMapping = module_index.UserMapping.new;
  final UserMappingArgs = module_index.UserMapping.new;
  final VpcCniAddon = module_index.VpcCniAddon.new;
  final VpcCniAddonArgs = module_index.VpcCniAddonArgs.new;
  final VpcCniOptions = module_index.VpcCniOptions.new;
  final VpcCniOptionsArgs = module_index.VpcCniOptions.new;
  final getKubeconfig = module_index.getKubeconfig;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Eks = module_providers.ProviderProvider.new;
}

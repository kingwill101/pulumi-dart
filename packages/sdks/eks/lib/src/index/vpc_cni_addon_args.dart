// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolve_conflicts_on_create.dart';
import 'resolve_conflicts_on_update.dart';

/// {@template pulumi_index_vpc_cni_addon_args_doc}
/// The set of arguments for VpcCniAddon.
/// {@endtemplate}
/// {@macro pulumi_index_vpc_cni_addon_args_doc}
class VpcCniAddonArgs {
  /// The version of the addon to use. If not specified, the latest version of the addon for the cluster's Kubernetes version will be used.
  final pulumi.Input<String>? addonVersion;
  /// The name of the EKS cluster.
  final pulumi.Input<String> clusterName;
  /// The Kubernetes version of the cluster. This is used to determine the addon version to use if `addonVersion` is not specified.
  final pulumi.Input<String>? clusterVersion;
  /// Specifies whether ipamd should configure rp filter for primary interface. Default is `false`.
  final pulumi.Input<bool>? cniConfigureRpfilter;
  /// Specifies that your pods may use subnets and security groups that are independent of your worker node's VPC configuration. By default, pods share the same subnet and security groups as the worker node's primary interface. Setting this variable to true causes ipamd to use the security groups and VPC subnet in a worker node's ENIConfig for elastic network interface allocation. You must create an ENIConfig custom resource for each subnet that your pods will reside in, and then annotate or label each worker node to use a specific ENIConfig (multiple worker nodes can be annotated or labelled with the same ENIConfig). Worker nodes can only be annotated with a single ENIConfig at a time, and the subnet in the ENIConfig must belong to the same Availability Zone that the worker node resides in. For more information, see CNI Custom Networking in the Amazon EKS User Guide. Default is `false`
  final pulumi.Input<bool>? cniCustomNetworkCfg;
  /// Specifies whether an external NAT gateway should be used to provide SNAT of secondary ENI IP addresses. If set to true, the SNAT iptables rule and off-VPC IP rule are not applied, and these rules are removed if they have already been applied. Disable SNAT if you need to allow inbound communication to your pods from external VPNs, direct connections, and external VPCs, and your pods do not need to access the Internet directly via an Internet Gateway. However, your nodes must be running in a private subnet and connected to the internet through an AWS NAT Gateway or another external NAT device. Default is `false`
  final pulumi.Input<bool>? cniExternalSnat;
  /// Custom configuration values for the vpc-cni addon. This object must match the schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  final pulumi.Input<Map<String, dynamic>>? configurationValues;
  /// Specifies that your pods may use subnets and security groups (within the same VPC as your control plane resources) that are independent of your cluster's `resourcesVpcConfig`.
  ///
  /// Defaults to false.
  final pulumi.Input<bool>? customNetworkConfig;
  /// Allows the kubelet's liveness and readiness probes to connect via TCP when pod ENI is enabled. This will slightly increase local TCP connection latency.
  final pulumi.Input<bool>? disableTcpEarlyDemux;
  /// Enables using Kubernetes network policies. In Kubernetes, by default, all pod-to-pod communication is allowed. Communication can be restricted with Kubernetes NetworkPolicy objects.
  ///
  /// See for more information: [Kubernetes Network Policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/).
  final pulumi.Input<bool>? enableNetworkPolicy;
  /// Specifies whether to allow IPAMD to add the `vpc.amazonaws.com/has-trunk-attached` label to the node if the instance has capacity to attach an additional ENI. Default is `false`. If using liveness and readiness probes, you will also need to disable TCP early demux.
  final pulumi.Input<bool>? enablePodEni;
  /// IPAMD will start allocating (/28) prefixes to the ENIs with ENABLE_PREFIX_DELEGATION set to true.
  final pulumi.Input<bool>? enablePrefixDelegation;
  /// Specifies the ENI_CONFIG_LABEL_DEF environment variable value for worker nodes. This is used to tell Kubernetes to automatically apply the ENIConfig for each Availability Zone
  /// Ref: https://docs.aws.amazon.com/eks/latest/userguide/cni-custom-network.html (step 5(c))
  ///
  /// Defaults to the official AWS CNI image in ECR.
  final pulumi.Input<String>? eniConfigLabelDef;
  /// Used to configure the MTU size for attached ENIs. The valid range is from 576 to 9001.
  ///
  /// Defaults to 9001.
  final pulumi.Input<int>? eniMtu;
  /// Specifies whether an external NAT gateway should be used to provide SNAT of secondary ENI IP addresses. If set to true, the SNAT iptables rule and off-VPC IP rule are not applied, and these rules are removed if they have already been applied.
  ///
  /// Defaults to false.
  final pulumi.Input<bool>? externalSnat;
  /// Specifies the file path used for logs.
  ///
  /// Defaults to "stdout" to emit Pod logs for `kubectl logs`.
  final pulumi.Input<String>? logFile;
  /// Specifies the log level used for logs.
  ///
  /// Defaults to "DEBUG"
  /// Valid values: "DEBUG", "INFO", "WARN", "ERROR", or "FATAL".
  final pulumi.Input<String>? logLevel;
  /// Specifies whether NodePort services are enabled on a worker node's primary network interface. This requires additional iptables rules and that the kernel's reverse path filter on the primary interface is set to loose.
  ///
  /// Defaults to true.
  final pulumi.Input<bool>? nodePortSupport;
  /// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Docs.
  final pulumi.Input<ResolveConflictsOnCreate>? resolveConflictsOnCreate;
  /// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value.  Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Docs.
  final pulumi.Input<ResolveConflictsOnUpdate>? resolveConflictsOnUpdate;
  /// Pass privilege to containers securityContext. This is required when SELinux is enabled. This value will not be passed to the CNI config by default
  final pulumi.Input<bool>? securityContextPrivileged;
  /// The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the permissions assigned to the node IAM role.
  ///
  /// For more information, see [Amazon EKS node IAM role](https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html) in the Amazon EKS User Guide.
  ///
  /// Note: To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for your cluster. For more information, see [Enabling IAM roles for service accounts on your cluster](https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html) in the Amazon EKS User Guide.
  final pulumi.Input<String>? serviceAccountRoleArn;
  /// Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<List<Map<String, String>>>? tags;
  /// Specifies the veth prefix used to generate the host-side veth device name for the CNI.
  ///
  /// The prefix can be at most 4 characters long.
  ///
  /// Defaults to "eni".
  final pulumi.Input<String>? vethPrefix;
  /// Specifies the number of free elastic network interfaces (and all of their available IP addresses) that the ipamD daemon should attempt to keep available for pod assignment on the node.
  ///
  /// Defaults to 1.
  final pulumi.Input<int>? warmEniTarget;
  /// Specifies the number of free IP addresses that the ipamD daemon should attempt to keep available for pod assignment on the node.
  final pulumi.Input<int>? warmIpTarget;
  /// WARM_PREFIX_TARGET will allocate one full (/28) prefix even if a single IP  is consumed with the existing prefix. Ref: https://github.com/aws/amazon-vpc-cni-k8s/blob/master/docs/prefix-and-ip-target.md
  final pulumi.Input<int>? warmPrefixTarget;

  /// Creates a new [VpcCniAddonArgs].
  /// [addonVersion] The version of the addon to use. If not specified, the latest version of the addon for the cluster's Kubernetes version will be used.
  /// [clusterName] The name of the EKS cluster.
  /// [clusterVersion] The Kubernetes version of the cluster. This is used to determine the addon version to use if `addonVersion` is not specified.
  /// [cniConfigureRpfilter] Specifies whether ipamd should configure rp filter for primary interface. Default is `false`.
  /// [cniCustomNetworkCfg] Specifies that your pods may use subnets and security groups that are independent of your worker node's VPC configuration. By default, pods share the same subnet and security groups as the worker node's primary interface. Setting this variable to true causes ipamd to use the security groups and VPC subnet in a worker node's ENIConfig for elastic network interface allocation. You must create an ENIConfig custom resource for each subnet that your pods will reside in, and then annotate or label each worker node to use a specific ENIConfig (multiple worker nodes can be annotated or labelled with the same ENIConfig). Worker nodes can only be annotated with a single ENIConfig at a time, and the subnet in the ENIConfig must belong to the same Availability Zone that the worker node resides in. For more information, see CNI Custom Networking in the Amazon EKS User Guide. Default is `false`
  /// [cniExternalSnat] Specifies whether an external NAT gateway should be used to provide SNAT of secondary ENI IP addresses. If set to true, the SNAT iptables rule and off-VPC IP rule are not applied, and these rules are removed if they have already been applied. Disable SNAT if you need to allow inbound communication to your pods from external VPNs, direct connections, and external VPCs, and your pods do not need to access the Internet directly via an Internet Gateway. However, your nodes must be running in a private subnet and connected to the internet through an AWS NAT Gateway or another external NAT device. Default is `false`
  /// [configurationValues] Custom configuration values for the vpc-cni addon. This object must match the schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  /// [customNetworkConfig] Specifies that your pods may use subnets and security groups (within the same VPC as your control plane resources) that are independent of your cluster's `resourcesVpcConfig`.
  /// [disableTcpEarlyDemux] Allows the kubelet's liveness and readiness probes to connect via TCP when pod ENI is enabled. This will slightly increase local TCP connection latency.
  /// [enableNetworkPolicy] Enables using Kubernetes network policies. In Kubernetes, by default, all pod-to-pod communication is allowed. Communication can be restricted with Kubernetes NetworkPolicy objects.
  /// [enablePodEni] Specifies whether to allow IPAMD to add the `vpc.amazonaws.com/has-trunk-attached` label to the node if the instance has capacity to attach an additional ENI. Default is `false`. If using liveness and readiness probes, you will also need to disable TCP early demux.
  /// [enablePrefixDelegation] IPAMD will start allocating (/28) prefixes to the ENIs with ENABLE_PREFIX_DELEGATION set to true.
  /// [eniConfigLabelDef] Specifies the ENI_CONFIG_LABEL_DEF environment variable value for worker nodes. This is used to tell Kubernetes to automatically apply the ENIConfig for each Availability Zone
  /// [eniMtu] Used to configure the MTU size for attached ENIs. The valid range is from 576 to 9001.
  /// [externalSnat] Specifies whether an external NAT gateway should be used to provide SNAT of secondary ENI IP addresses. If set to true, the SNAT iptables rule and off-VPC IP rule are not applied, and these rules are removed if they have already been applied.
  /// [logFile] Specifies the file path used for logs.
  /// [logLevel] Specifies the log level used for logs.
  /// [nodePortSupport] Specifies whether NodePort services are enabled on a worker node's primary network interface. This requires additional iptables rules and that the kernel's reverse path filter on the primary interface is set to loose.
  /// [resolveConflictsOnCreate] How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Docs.
  /// [resolveConflictsOnUpdate] How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value.  Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Docs.
  /// [securityContextPrivileged] Pass privilege to containers securityContext. This is required when SELinux is enabled. This value will not be passed to the CNI config by default
  /// [serviceAccountRoleArn] The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the permissions assigned to the node IAM role.
  /// [tags] Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vethPrefix] Specifies the veth prefix used to generate the host-side veth device name for the CNI.
  /// [warmEniTarget] Specifies the number of free elastic network interfaces (and all of their available IP addresses) that the ipamD daemon should attempt to keep available for pod assignment on the node.
  /// [warmIpTarget] Specifies the number of free IP addresses that the ipamD daemon should attempt to keep available for pod assignment on the node.
  /// [warmPrefixTarget] WARM_PREFIX_TARGET will allocate one full (/28) prefix even if a single IP  is consumed with the existing prefix. Ref: https://github.com/aws/amazon-vpc-cni-k8s/blob/master/docs/prefix-and-ip-target.md
  const VpcCniAddonArgs({
    this.addonVersion,
    required this.clusterName,
    this.clusterVersion,
    this.cniConfigureRpfilter,
    this.cniCustomNetworkCfg,
    this.cniExternalSnat,
    this.configurationValues,
    this.customNetworkConfig,
    this.disableTcpEarlyDemux,
    this.enableNetworkPolicy,
    this.enablePodEni,
    this.enablePrefixDelegation,
    this.eniConfigLabelDef,
    this.eniMtu,
    this.externalSnat,
    this.logFile,
    this.logLevel,
    this.nodePortSupport,
    this.resolveConflictsOnCreate,
    this.resolveConflictsOnUpdate,
    this.securityContextPrivileged,
    this.serviceAccountRoleArn,
    this.tags,
    this.vethPrefix,
    this.warmEniTarget,
    this.warmIpTarget,
    this.warmPrefixTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonVersion': ?addonVersion,
      'clusterName': clusterName,
      'clusterVersion': ?clusterVersion,
      'cniConfigureRpfilter': ?cniConfigureRpfilter,
      'cniCustomNetworkCfg': ?cniCustomNetworkCfg,
      'cniExternalSnat': ?cniExternalSnat,
      'configurationValues': ?configurationValues,
      'customNetworkConfig': ?customNetworkConfig,
      'disableTcpEarlyDemux': ?disableTcpEarlyDemux,
      'enableNetworkPolicy': ?enableNetworkPolicy,
      'enablePodEni': ?enablePodEni,
      'enablePrefixDelegation': ?enablePrefixDelegation,
      'eniConfigLabelDef': ?eniConfigLabelDef,
      'eniMtu': ?eniMtu,
      'externalSnat': ?externalSnat,
      'logFile': ?logFile,
      'logLevel': ?logLevel,
      'nodePortSupport': ?nodePortSupport,
      'resolveConflictsOnCreate': ?pulumi.Input.mapOptionalInputValue<ResolveConflictsOnCreate, String>(resolveConflictsOnCreate, (value) => value.wireValue),
      'resolveConflictsOnUpdate': ?pulumi.Input.mapOptionalInputValue<ResolveConflictsOnUpdate, String>(resolveConflictsOnUpdate, (value) => value.wireValue),
      'securityContextPrivileged': ?securityContextPrivileged,
      'serviceAccountRoleArn': ?serviceAccountRoleArn,
      'tags': ?tags,
      'vethPrefix': ?vethPrefix,
      'warmEniTarget': ?warmEniTarget,
      'warmIpTarget': ?warmIpTarget,
      'warmPrefixTarget': ?warmPrefixTarget,
    };
  }

  factory VpcCniAddonArgs.fromMap(Map<String, dynamic> map) {
    return VpcCniAddonArgs(
      addonVersion: (() { final guardedValue = map['addonVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cniConfigureRpfilter: (() { final guardedValue = map['cniConfigureRpfilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cniCustomNetworkCfg: (() { final guardedValue = map['cniCustomNetworkCfg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cniExternalSnat: (() { final guardedValue = map['cniExternalSnat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationValues: (() { final guardedValue = map['configurationValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      customNetworkConfig: (() { final guardedValue = map['customNetworkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableTcpEarlyDemux: (() { final guardedValue = map['disableTcpEarlyDemux']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNetworkPolicy: (() { final guardedValue = map['enableNetworkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePodEni: (() { final guardedValue = map['enablePodEni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrefixDelegation: (() { final guardedValue = map['enablePrefixDelegation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eniConfigLabelDef: (() { final guardedValue = map['eniConfigLabelDef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eniMtu: (() { final guardedValue = map['eniMtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      externalSnat: (() { final guardedValue = map['externalSnat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logFile: (() { final guardedValue = map['logFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePortSupport: (() { final guardedValue = map['nodePortSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resolveConflictsOnCreate: (() { final guardedValue = map['resolveConflictsOnCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolveConflictsOnCreate.fromValue(guardedValue as String)); })(),
      resolveConflictsOnUpdate: (() { final guardedValue = map['resolveConflictsOnUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolveConflictsOnUpdate.fromValue(guardedValue as String)); })(),
      securityContextPrivileged: (() { final guardedValue = map['securityContextPrivileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccountRoleArn: (() { final guardedValue = map['serviceAccountRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, String>>()); })(),
      vethPrefix: (() { final guardedValue = map['vethPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmEniTarget: (() { final guardedValue = map['warmEniTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warmIpTarget: (() { final guardedValue = map['warmIpTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warmPrefixTarget: (() { final guardedValue = map['warmPrefixTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

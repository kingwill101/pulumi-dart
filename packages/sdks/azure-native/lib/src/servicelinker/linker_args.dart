// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_info_base.dart';
import 'azure_resource.dart';
import 'configuration_info.dart';
import 'public_network_solution.dart';
import 'secret_store.dart';
import 'vnet_solution.dart';

/// {@template pulumi_servicelinker_linker_args_doc}
/// The set of arguments for Linker.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_linker_args_doc}
class LinkerArgs {
  /// The authentication type.
  final pulumi.Input<AccessKeyInfoBase>? authInfo;
  /// The application client type
  final pulumi.Input<String>? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final pulumi.Input<ConfigurationInfo>? configurationInfo;
  /// The name Linker resource.
  final pulumi.Input<String>? linkerName;
  /// The network solution.
  final pulumi.Input<PublicNetworkSolution>? publicNetworkSolution;
  /// The fully qualified Azure Resource manager identifier of the resource to be connected.
  final pulumi.Input<String> resourceUri;
  /// connection scope in source service.
  final pulumi.Input<String>? scope;
  /// An option to store secret value in secure place
  final pulumi.Input<SecretStore>? secretStore;
  /// The target service properties
  final pulumi.Input<AzureResource>? targetService;
  /// The VNet solution.
  final pulumi.Input<VNetSolution>? vNetSolution;

  /// Creates a new [LinkerArgs].
  /// [authInfo] The authentication type.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [linkerName] The name Linker resource.
  /// [publicNetworkSolution] The network solution.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource to be connected.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [targetService] The target service properties
  /// [vNetSolution] The VNet solution.
  LinkerArgs({
    this.authInfo,
    this.clientType,
    this.configurationInfo,
    this.linkerName,
    this.publicNetworkSolution,
    required this.resourceUri,
    this.scope,
    this.secretStore,
    this.targetService,
    this.vNetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authInfo': ?pulumi.Input.mapOptionalInputValue<AccessKeyInfoBase, Map<String, dynamic>>(authInfo, (value) => value.toMap()),
      'clientType': ?clientType,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'linkerName': ?linkerName,
      'publicNetworkSolution': ?pulumi.Input.mapOptionalInputValue<PublicNetworkSolution, Map<String, dynamic>>(publicNetworkSolution, (value) => value.toMap()),
      'resourceUri': resourceUri,
      'scope': ?scope,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'targetService': ?pulumi.Input.mapOptionalInputValue<AzureResource, Map<String, dynamic>>(targetService, (value) => value.toMap()),
      'vNetSolution': ?pulumi.Input.mapOptionalInputValue<VNetSolution, Map<String, dynamic>>(vNetSolution, (value) => value.toMap()),
    };
  }

  factory LinkerArgs.fromMap(Map<String, dynamic> map) {
    return LinkerArgs(
      authInfo: map['authInfo'] == null ? null : (AccessKeyInfoBase.fromMap((map['authInfo'] as Map).cast<String, dynamic>())).input(),
      clientType: map['clientType'] == null ? null : (map['clientType'] as String).input(),
      configurationInfo: map['configurationInfo'] == null ? null : (ConfigurationInfo.fromMap((map['configurationInfo'] as Map).cast<String, dynamic>())).input(),
      linkerName: map['linkerName'] == null ? null : (map['linkerName'] as String).input(),
      publicNetworkSolution: map['publicNetworkSolution'] == null ? null : (PublicNetworkSolution.fromMap((map['publicNetworkSolution'] as Map).cast<String, dynamic>())).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      secretStore: map['secretStore'] == null ? null : (SecretStore.fromMap((map['secretStore'] as Map).cast<String, dynamic>())).input(),
      targetService: map['targetService'] == null ? null : (AzureResource.fromMap((map['targetService'] as Map).cast<String, dynamic>())).input(),
      vNetSolution: map['vNetSolution'] == null ? null : (VNetSolution.fromMap((map['vNetSolution'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


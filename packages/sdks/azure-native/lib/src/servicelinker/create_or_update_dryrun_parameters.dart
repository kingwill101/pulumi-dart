// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_info_base.dart';
import 'azure_resource.dart';
import 'configuration_info.dart';
import 'public_network_solution.dart';
import 'secret_store.dart';
import 'vnet_solution.dart';

/// The dryrun parameters for creation or update a linker
class CreateOrUpdateDryrunParameters {
  /// The name of action for you dryrun job.
  /// Expected value is 'createOrUpdate'.
  final pulumi.Input<String> actionName;
  /// The authentication type.
  final pulumi.Input<AccessKeyInfoBase>? authInfo;
  /// The application client type
  final pulumi.Input<String>? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final pulumi.Input<ConfigurationInfo>? configurationInfo;
  /// The network solution.
  final pulumi.Input<PublicNetworkSolution>? publicNetworkSolution;
  /// connection scope in source service.
  final pulumi.Input<String>? scope;
  /// An option to store secret value in secure place
  final pulumi.Input<SecretStore>? secretStore;
  /// The target service properties
  final pulumi.Input<AzureResource>? targetService;
  /// The VNet solution.
  final pulumi.Input<VNetSolution>? vNetSolution;

  /// Creates a new [CreateOrUpdateDryrunParameters].
  /// [actionName] The name of action for you dryrun job.
  /// [authInfo] The authentication type.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [publicNetworkSolution] The network solution.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [targetService] The target service properties
  /// [vNetSolution] The VNet solution.
  CreateOrUpdateDryrunParameters({
    required this.actionName,
    this.authInfo,
    this.clientType,
    this.configurationInfo,
    this.publicNetworkSolution,
    this.scope,
    this.secretStore,
    this.targetService,
    this.vNetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'authInfo': ?pulumi.Input.mapOptionalInputValue<AccessKeyInfoBase, Map<String, dynamic>>(authInfo, (value) => value.toMap()),
      'clientType': ?clientType,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'publicNetworkSolution': ?pulumi.Input.mapOptionalInputValue<PublicNetworkSolution, Map<String, dynamic>>(publicNetworkSolution, (value) => value.toMap()),
      'scope': ?scope,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'targetService': ?pulumi.Input.mapOptionalInputValue<AzureResource, Map<String, dynamic>>(targetService, (value) => value.toMap()),
      'vNetSolution': ?pulumi.Input.mapOptionalInputValue<VNetSolution, Map<String, dynamic>>(vNetSolution, (value) => value.toMap()),
    };
  }

  factory CreateOrUpdateDryrunParameters.fromMap(Map<String, dynamic> map) {
    return CreateOrUpdateDryrunParameters(
      actionName: (map['actionName'] as String).input(),
      authInfo: map['authInfo'] == null ? null : (AccessKeyInfoBase.fromMap((map['authInfo']! as Map).cast<String, dynamic>())).input(),
      clientType: map['clientType'] == null ? null : (map['clientType']! as String).input(),
      configurationInfo: map['configurationInfo'] == null ? null : (ConfigurationInfo.fromMap((map['configurationInfo']! as Map).cast<String, dynamic>())).input(),
      publicNetworkSolution: map['publicNetworkSolution'] == null ? null : (PublicNetworkSolution.fromMap((map['publicNetworkSolution']! as Map).cast<String, dynamic>())).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      secretStore: map['secretStore'] == null ? null : (SecretStore.fromMap((map['secretStore']! as Map).cast<String, dynamic>())).input(),
      targetService: map['targetService'] == null ? null : (AzureResource.fromMap((map['targetService']! as Map).cast<String, dynamic>())).input(),
      vNetSolution: map['vNetSolution'] == null ? null : (VNetSolution.fromMap((map['vNetSolution']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_shareable_link.dart';

/// {@template pulumi_network_get_bastion_shareable_link_args_doc}
/// Arguments for getBastionShareableLink.
/// {@endtemplate}
/// {@macro pulumi_network_get_bastion_shareable_link_args_doc}
class GetBastionShareableLinkArgs {
  /// The name of the Bastion Host.
  final pulumi.Input<String> bastionHostName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// List of VM references.
  final pulumi.Input<List<BastionShareableLink>>? vms;

  /// Creates a new [GetBastionShareableLinkArgs].
  /// [bastionHostName] The name of the Bastion Host.
  /// [resourceGroupName] The name of the resource group.
  /// [vms] List of VM references.
  GetBastionShareableLinkArgs({
    required pulumi.Output<String> bastionHostName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<BastionShareableLink>>? vms,
  }) :
      bastionHostName = pulumi.Input.asInput<String>(bastionHostName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vms = pulumi.Input.asOptionalInput<List<BastionShareableLink>>(vms);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bastionHostName': bastionHostName,
      'resourceGroupName': resourceGroupName,
      'vms': ?pulumi.Input.mapOptionalInputValue<List<BastionShareableLink>, List<Map<String, dynamic>>>(vms, (value) => pulumi.Input.encodeList<BastionShareableLink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBastionShareableLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetBastionShareableLinkArgs(
      bastionHostName: pulumi.Output.create<String>(map['bastionHostName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vms: map['vms'] == null ? null : pulumi.Output.create<List<BastionShareableLink>>(pulumi.Input.decodeList<BastionShareableLink>(map['vms'], (value) => BastionShareableLink.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

